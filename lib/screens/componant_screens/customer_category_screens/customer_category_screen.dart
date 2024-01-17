import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

import '../../../widgets/my_alert_widget.dart';

class CustomerCategoryScreen extends StatefulWidget {
  const CustomerCategoryScreen({super.key});

  @override
  State<CustomerCategoryScreen> createState() => _CustomerCategoryScreenState();
}

class _CustomerCategoryScreenState extends State<CustomerCategoryScreen> {
  Stream<List<CustomerCategoryModel>> custCatStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.customerRepository.streamCustCat();
  }

  // toggleFn(int id, bool value) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.customerRepository.changeActive(id, value);
  // }

  // deleteFn(int id) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.customerRepository.deleteCusCat(id);
  // }

  deleteWorker(CustomerCategoryModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.custCategoryName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.customerRepository.deleteCusCat(e.custCategoryId);
        EasyLoading.showToast('Customer category deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateWorkers(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.customerRepository.changeActive(id, value);
  }

  editWorkerFn({required CustomerCategoryModel model}) {
    context.push(
      AppScreen.editCustomerCategory.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Category'),
        actions: [
          IconButton(
            onPressed: () =>
                context.push(AppScreen.createCustomerCategory.path),
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: StreamBuilder<List<CustomerCategoryModel>>(
        stream: custCatStream(),
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (data == null || data.isEmpty) {
            return const Center(
              child: Text('No Category'),
            );
          } else {
            return SizedBox(
              width: 100.w,
              child: DataTable(
                columns: [
                  const DataColumn(
                    label: Text('Name'),
                  ),
                  // const DataColumn(
                  //   label: Text('Role'),
                  // ),
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
                rows: data
                    .map(
                      (e) => DataRow(
                        cells: [
                          DataCell(Text(e.custCategoryName.toString())),
                          DataCell(
                            Switch.adaptive(
                              value: e.isActive as bool,
                              onChanged: (va) =>
                                  activeDeactivateWorkers(e.id, va),
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
                                    onPressed: () => editWorkerFn(model: e),
                                    icon: const Icon(Icons.edit),
                                  ),
                                  SizedBox(width: 2.w),
                                  IconButton(
                                    onPressed: () => deleteWorker(e),
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
            // ListView.builder(
            //     itemCount: data.length,
            //     itemBuilder: (context, index) {
            //       final rawData = data[index];
            //       return ListTile(
            //         title: Text(rawData.custCategoryName ?? "Category Name"),
            //         subtitle: Column(
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             //discount
            //             Text(
            //                 "Discount: ${rawData.custCategoryDiscount ?? '0.0'}%"),
            //             //status
            //             Text((rawData.isActive ?? false)
            //                 ? 'Active'
            //                 : "InActive"),
            //           ],
            //         ),
            //         trailing: Row(
            //           mainAxisSize: MainAxisSize.min,
            //           children: [
            //             IconButton(
            //               onPressed: () => context.push(
            //                 AppScreen.editCustomerCategory.path,
            //                 //passing data to edit screen
            //                 extra: data[index],
            //               ),
            //               icon: const Icon(
            //                 Icons.edit,
            //                 size: 30,
            //               ),
            //             ),
            //             SizedBox(width: 2.w),
            //             IconButton(
            //               onPressed: () => deleteFn(rawData.id),
            //               icon: const Icon(
            //                 Icons.delete,
            //                 size: 30,
            //               ),
            //             ),
            //             SizedBox(width: 2.w),
            //             Switch.adaptive(
            //               value: rawData.isActive ?? false,
            //               onChanged: (value) => toggleFn(rawData.id, value),
            //             ),
            //           ],
            //         ),
            //       );
            //     });
          }
        },
      ),
    );
  }
}
