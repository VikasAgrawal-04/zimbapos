import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/tax_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/ktextstyles.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/my_alert_widget.dart';

class TaxListScreen extends StatefulWidget {
  const TaxListScreen({super.key});

  @override
  State<TaxListScreen> createState() => _TaxListScreenState();
}

class _TaxListScreenState extends State<TaxListScreen> {
  //
  //
  Stream<List<TaxModel>> streamForTaxes() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    // log(datatbaseCubit.rateSetsRepository.getRateSets().toString());
    return datatbaseCubit.taxesRepository.streamTaxList();
  }

  deleteTax(TaxModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.taxName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.taxesRepository.deleteTax(e.id);
        EasyLoading.showToast('Tax deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateTax(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.taxesRepository.changeActive(id, value);
  }

  editTaxFn({required TaxModel model}) {
    context.push(
      AppScreen.editTaxScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tax list',
            style: KTextStyles.kBlackAppBarHeader,
          ),
          actions: [
            // IconButton(
            //   onPressed: () => context.push(AppScreen.createAreasScreen.path),
            //   icon: const Icon(Icons.add),
            // ),
            TextButton.icon(
              onPressed: () => context.push(AppScreen.createTaxScreen.path),
              label: const Text('Add Tax'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: StreamBuilder<List<TaxModel>>(
          stream: streamForTaxes(),
          builder: (context, snapshot) {
            final list = snapshot.data;
            if (list == null || list.isEmpty) {
              return const Center(
                child: Text('No taxes available,create one.'),
              );
            }
            return SizedBox(
              width: 100.w,
              child: DataTable(
                headingTextStyle: KTextStyles.kTitle,
                columns: [
                  const DataColumn(
                    label: Text('Name'),
                  ),
                  const DataColumn(
                    label: Text('Percent'),
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
                rows: list
                    .map(
                      (e) => DataRow(
                        cells: [
                          DataCell(Text(
                            e.taxName.toString(),
                            style: KTextStyles.kSubtitle,
                          )),
                          DataCell(Text(
                            "${e.taxPercent.toString()}%",
                            style: KTextStyles.kSubtitle,
                          )),
                          DataCell(
                            Switch.adaptive(
                              value: e.isActive as bool,
                              onChanged: (va) => activeDeactivateTax(e.id, va),
                            ),
                          ),
                          DataCell(
                            Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    onPressed: () => editTaxFn(model: e),
                                    icon: const Icon(Icons.edit),
                                  ),
                                  SizedBox(width: 2.w),
                                  IconButton(
                                    onPressed: () => deleteTax(e),
                                    icon: const Icon(CupertinoIcons.delete),
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
          },
        ),
      ),
    );
  }
}
