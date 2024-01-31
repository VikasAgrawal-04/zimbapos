import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/discount_single_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/ktextstyles.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/my_alert_widget.dart';

class SingleDiscountScreen extends StatefulWidget {
  const SingleDiscountScreen({super.key});

  @override
  State<SingleDiscountScreen> createState() => _SingleDiscountScreenState();
}

class _SingleDiscountScreenState extends State<SingleDiscountScreen> {
  //
  //
  Stream<List<DiscountModel>> streamForDiscounts() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    // log(datatbaseCubit.rateSetsRepository.getRateSets().toString());
    return datatbaseCubit.discountRepository.streamDiscountList();
  }

  deleteDiscount(DiscountModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.couponName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.discountRepository.deleteDiscount(e.id);
        EasyLoading.showToast('Coupon deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateDiscount(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.discountRepository.changeActive(id, value);
  }

  editDiscountFn({required DiscountModel model}) {
    context.push(
      AppScreen.editDiscountScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Coupon list',
            style: KTextStyles.kBlackAppBarHeader,
          ),
          actions: [
            // IconButton(
            //   onPressed: () => context.push(AppScreen.createAreasScreen.path),
            //   icon: const Icon(Icons.add),
            // ),
            TextButton.icon(
              onPressed: () =>
                  context.push(AppScreen.createDiscountScreen.path),
              label: const Text('Add coupon'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: StreamBuilder<List<DiscountModel>>(
            stream: streamForDiscounts(),
            builder: (context, snapshot) {
              final list = snapshot.data;
              if (list == null || list.isEmpty) {
                return const Center(
                  child: Text('No coupons available,create one.'),
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
                              e.couponName.toString(),
                              style: KTextStyles.kSubtitle,
                            )),
                            DataCell(Text(
                              "${e.discountPercent.toString()}%",
                              style: KTextStyles.kSubtitle,
                            )),
                            DataCell(
                              Switch.adaptive(
                                value: e.isActive as bool,
                                onChanged: (va) =>
                                    activeDeactivateDiscount(e.id, va),
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
                                      onPressed: () => editDiscountFn(model: e),
                                      icon: const Icon(Icons.edit),
                                    ),
                                    SizedBox(width: 2.w),
                                    IconButton(
                                      onPressed: () => deleteDiscount(e),
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
      ),
    );
  }
}
