import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/discount_bulk_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/my_alert_widget.dart';

class BulkDiscountScreen extends StatefulWidget {
  const BulkDiscountScreen({super.key});

  @override
  State<BulkDiscountScreen> createState() => _BulkDiscountScreenState();
}

class _BulkDiscountScreenState extends State<BulkDiscountScreen> {
  //
  //
  Stream<List<BulkDisc>> streamForBulkDiscs() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    // log(datatbaseCubit.rateSetsRepository.getRateSets().toString());
    return datatbaseCubit.discBulkRepo.streamBulkDiscList();
  }

  deleteBulkDisc(BulkDisc e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.couponName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.discSingleRepo.deleteSingleDisc(e.id);
        EasyLoading.showToast('Bulk Coupon deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateBulkDisc(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.discBulkRepo.changeActive(id, value);
  }

  editBulkDiscFn({required BulkDisc model}) {
    context.push(
      AppScreen.editBulkDiscountScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Single coupon list'),
          actions: [
            // IconButton(
            //   onPressed: () => context.push(AppScreen.createAreasScreen.path),
            //   icon: const Icon(Icons.add),
            // ),
            TextButton.icon(
              onPressed: () =>
                  context.push(AppScreen.createBulkDiscountScreen.path),
              label: const Text('Add bulk coupon'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: StreamBuilder<List<BulkDisc>>(
          stream: streamForBulkDiscs(),
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
                          DataCell(Text(e.couponName.toString())),
                          DataCell(Text("${e.discountPercent.toString()}%")),
                          DataCell(
                            Switch.adaptive(
                              value: e.isActive as bool,
                              onChanged: (va) =>
                                  activeDeactivateBulkDisc(e.id, va),
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
                                    onPressed: () => editBulkDiscFn(model: e),
                                    icon: const Icon(Icons.edit),
                                  ),
                                  SizedBox(width: 2.w),
                                  IconButton(
                                    onPressed: () => deleteBulkDisc(e),
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
