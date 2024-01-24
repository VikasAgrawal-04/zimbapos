import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/discount_single_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
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
  Stream<List<SingleDisc>> streamForSingleDiscs() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    // log(datatbaseCubit.rateSetsRepository.getRateSets().toString());
    return datatbaseCubit.discSingleRepo.streamSingleDiscList();
  }

  deleteSingleDisc(SingleDisc e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.couponName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.discSingleRepo.deleteSingleDisc(e.id);
        EasyLoading.showToast('Coupon deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateSingleDisc(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.discSingleRepo.changeActive(id, value);
  }

  editSingleDiscFn({required SingleDisc model}) {
    context.push(
      AppScreen.editSingleDiscountScreen.path,
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
                  context.push(AppScreen.createSingleDiscountScreen.path),
              label: const Text('Add single coupon'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: StreamBuilder<List<SingleDisc>>(
          stream: streamForSingleDiscs(),
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
                                  activeDeactivateSingleDisc(e.id, va),
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
                                    onPressed: () => editSingleDiscFn(model: e),
                                    icon: const Icon(Icons.edit),
                                  ),
                                  SizedBox(width: 2.w),
                                  IconButton(
                                    onPressed: () => deleteSingleDisc(e),
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
