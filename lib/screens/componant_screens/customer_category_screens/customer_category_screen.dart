import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

import '../../../bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_cubit.dart';
import '../../../bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_state.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../widgets/indicators/loading_indicator.dart';
import '../../../widgets/my_alert_widget.dart';

class CustomerCategoryScreen extends StatefulWidget {
  const CustomerCategoryScreen({super.key});

  @override
  State<CustomerCategoryScreen> createState() => _CustomerCategoryScreenState();
}

class _CustomerCategoryScreenState extends State<CustomerCategoryScreen> {
  //
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  Stream<List<CustomerCategoryModel>> custCatStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.customerCategoryRepository.streamCustCat();
  }

  // toggleFn(int id, bool value) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.customerRepository.changeActive(id, value);
  // }

  // deleteFn(int id) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.customerRepository.deleteCusCat(id);
  // }

  deleteCusCat(CustomerCategoryModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.custCategoryName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.customerCategoryRepository.deleteCusCat(e.custCategoryId);
        EasyLoading.showToast('Customer category deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateCusCat(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.customerCategoryRepository.changeActive(id, value);
  }

  editCusCatFn({required CustomerCategoryModel model}) {
    context.push(
      AppScreen.editCustomerCategory.path,
      extra: model,
    );
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
            'Customer Category',
            style: KTextStyles.kBlackAppBarHeader,
          ),
          actions: [
            // IconButton(
            //   onPressed: () =>
            //       context.push(AppScreen.createCustomerCategory.path),
            //   icon: const Icon(Icons.add),
            // ),
            TextButton.icon(
              onPressed: () =>
                  context.push(AppScreen.createCustomerCategory.path),
              label: const Text('Add Customer category'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: BlocBuilder<CustomerCategoryScreenCubit,
            CustomerCategoryScreenState>(
          builder: ((context, state) {
            final data = state.customerCategories;
            if (state.status == Status.loading) {
              return const MyLoadingIndicator();
            }
            if (data.isEmpty) {
              return const Center(
                child: Text('No Customer Categories'),
              );
            } else {
              return SizedBox(
                width: 100.w,
                child: DataTable(
                  headingTextStyle: KTextStyles.kTitle,
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
                            DataCell(Text(
                              e.custCategoryName.toString(),
                              style: KTextStyles.kSubtitle,
                            )),
                            DataCell(
                              Switch.adaptive(
                                  value: e.isActive as bool,
                                  onChanged: (va) {
                                    context
                                        .read<CustomerCategoryScreenCubit>()
                                        .updateCustomerCategory(e, val: va);
                                  }),
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
                                      onPressed: () => editCusCatFn(model: e),
                                      icon: const Icon(Icons.edit),
                                    ),
                                    SizedBox(width: 2.w),
                                    IconButton(
                                      onPressed: () => context
                                          .read<CustomerCategoryScreenCubit>()
                                          .deleteCustomerCategory(
                                              e.custCategoryId.toString()),
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
            }
          }),
        ),
      ),
    );
    // Column(
    //   children: [
    //     //search
    //     Padding(
    //       padding: const EdgeInsets.all(8),
    //       child: PrimaryTextField(
    //         controller: _searchController,
    //         onChanged: (value) {
    //           setState(() {});
    //         },
    //         hintText: "Search by name",
    //         prefixIcon: const Icon(Icons.search),
    //       ),
    //     ),
    //     //stream
    //     StreamBuilder<List<CustomerCategoryModel>>(
    //       stream: custCatStream(),
    //       builder: (context, snapshot) {
    //         final data = snapshot.data;
    //         final filteredList = _searchController.text.isEmpty
    //             ? data
    //             : data!.where((card) {
    //                 final name = card.custCategoryName ?? '';
    //                 return name.toLowerCase().contains(
    //                       _searchController.text.toLowerCase(),
    //                     );
    //               }).toList();

    //         if (filteredList == null || filteredList.isEmpty) {
    //           return const Center(
    //             child: Text('No customer category found'),
    //           );
    //         }
    //         if (data == null || data.isEmpty) {
    //           return const Center(
    //             child: Text('No customer categorues available'),
    //           );
    //         } else {

    //         }
    //       },
    //     ),
    //   ],
    // ),
    // ),
    // );
  }
}
