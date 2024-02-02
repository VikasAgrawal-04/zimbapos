import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/card_model.dart';
import 'package:zimbapos/widgets/textfield/primary_textfield.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/ktextstyles.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_alert_widget.dart';

class CardListScreen extends StatefulWidget {
  const CardListScreen({super.key});

  @override
  State<CardListScreen> createState() => _CardListScreenState();
}

class _CardListScreenState extends State<CardListScreen> {
  //
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  Stream<List<CardModel>> cardListStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.cardRepository.streamCards();
  }

  deleteCard(CardModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete ${e.customerName}'s card?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.categoryRepository.deleteCategory(e.id);
        EasyLoading.showToast('Card deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateCard(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.cardRepository.changeActive(id, value);
  }

  editCardFn({required CardModel model}) {
    context.push(
      AppScreen.editCardScreen.path,
      extra: model,
    );
  }

  actOnCardFn({required CardModel model}) {
    context.push(
      AppScreen.cardActionScreen.path,
      extra: model,
    );
  }

  voidAll(BuildContext context) async {
    final db = DatabaseCubit.dbFrom(context);
    final List<CardModel> cards = await db.cardRepository.getCards();

    if (cards.isNotEmpty) {
      for (final CardModel card in cards) {
        db.cardRepository.updateBalance(
          card.id,
          0.0,
          card.lastLoadedDatetime as DateTime,
        );
      }
      EasyLoading.showToast('All cards voided');
    } else {
      EasyLoading.showToast('No cards found to void');
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Card list',
            style: KTextStyles.kBlackAppBarHeader,
          ),
          actions: [
            TextButton.icon(
              onPressed: () => context.push(AppScreen.createCardScreen.path),
              label: const Text('Add card'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                //search bar
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: PrimaryTextField(
                      controller: _searchController,
                      onChanged: (value) {
                        setState(() {});
                      },
                      hintText: "Search by name",
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),

                //void all
                Expanded(
                  flex: 1,
                  child: CustomButton(
                    text: "Void all",
                    onPressed: () {
                      UtilDialog.showMyDialog(
                        context,
                        "Alert!",
                        "Do you really want to void all card?",
                        () {
                          //perform void action
                          voidAll(context);
                          EasyLoading.showToast('All cards voided');

                          context.pop();
                        },
                        null,
                      );
                    },
                  ),
                ),
              ],
            ),

            //stream
            Expanded(
              child: StreamBuilder<List<CardModel>>(
                stream: cardListStream(),
                builder: (context, snapshot) {
                  final data = snapshot.data;
                  final filteredList = _searchController.text.isEmpty
                      ? data
                      : data!.where((card) {
                          final name = card.customerName ?? '';
                          return name.toLowerCase().contains(
                                _searchController.text.toLowerCase(),
                              );
                        }).toList();

                  if (filteredList == null || filteredList.isEmpty) {
                    return const Center(
                      child: Text('No Cards found'),
                    );
                  }
                  if (data == null || data.isEmpty) {
                    return const Center(
                      child: Text('No Cards'),
                    );
                  } else {
                    return SizedBox(
                      width: 100.w,
                      child: DataTable(
                        headingTextStyle: KTextStyles.kTitle,
                        columns: [
                          const DataColumn(
                            label: Text('Card Num'),
                          ),
                          const DataColumn(
                            label: Text('Balance'),
                          ),
                          const DataColumn(
                            label: Text('Name'),
                          ),
                          const DataColumn(
                            label: Text('Mobile'),
                          ),
                          const DataColumn(
                            label: Text('Active'),
                          ),
                          DataColumn(
                            label: Padding(
                              padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                              child: const Text('Actions'),
                            ),
                          ),
                        ],
                        rows: filteredList
                            .map(
                              (e) => DataRow(
                                cells: [
                                  DataCell(
                                    Text(
                                      e.cardId.toString(),
                                      style: KTextStyles.kSubtitle,
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      e.balance.toString(),
                                      style: KTextStyles.kSubtitle,
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      e.customerName.toString(),
                                      style: KTextStyles.kSubtitle,
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      e.customerMobile.toString(),
                                      style: KTextStyles.kSubtitle,
                                    ),
                                  ),
                                  DataCell(
                                    Switch.adaptive(
                                      value: e.isActive as bool,
                                      onChanged: (va) =>
                                          activeDeactivateCard(e.id, va),
                                    ),
                                  ),
                                  DataCell(
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                actOnCardFn(model: e);
                                              },
                                              child: const Text("View")),
                                          SizedBox(width: 2.w),
                                          IconButton(
                                            onPressed: () =>
                                                editCardFn(model: e),
                                            icon: const Icon(Icons.edit),
                                          ),
                                          SizedBox(width: 2.w),
                                          IconButton(
                                            onPressed: () => deleteCard(e),
                                            icon: const Icon(
                                                CupertinoIcons.delete),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
