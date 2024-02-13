import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_cubit.dart';
import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_state.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/global_models/customer_model.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/indicators/loading_indicator.dart';

class CustomerListScreen extends StatefulWidget {
  const CustomerListScreen({super.key});

  @override
  State<CustomerListScreen> createState() => _CustomerListScreenState();
}

class _CustomerListScreenState extends State<CustomerListScreen> {
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  editCustomerFn({required CustomerModel model}) {
    context.push(
      AppScreen.editCustomerScreen.path,
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
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/menu.png', height: 3.h),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/power_off.png', height: 3.h)),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.h),
            child: Divider(
              color: KColors.blackColor,
              thickness: 1.0,
              endIndent: 1.w,
              indent: 1.w,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //row for back button
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Image.asset(
                    "assets/icons/back.png",
                    height: 5.h,
                  ),
                ),
              ],
            ),

            //page title
            Padding(
              padding: const EdgeInsets.only(
                top: 18,
                left: 24,
                right: 24,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Areas',
                    style: theme.textTheme.titleLarge,
                  ),

                  //add area button
                  CustomButtonNew(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    shadows: const [],
                    height: 3.5.h,
                    width: 18.w,
                    text: 'Add New Customer',
                    style: theme.textTheme.titleMedium,
                    onTap: () {
                      context.read<CustomerScreenCubit>().clearControllers();
                      context.push(AppScreen.createCustomerScreen.path);
                    },
                  ),
                ],
              ),
            ),

            //divider
            PreferredSize(
              preferredSize: Size.fromHeight(1.h),
              child: Divider(
                color: KColors.greyFill,
                thickness: 1.0,
                endIndent: 1.w,
                indent: 1.w,
              ),
            ),

            //table
            BlocBuilder<CustomerScreenCubit, CustomerScreenState>(
              builder: ((context, state) {
                final data = state.customerList;
                if (state.status == Status.loading) {
                  return const MyLoadingIndicator();
                }
                if (data.isEmpty) {
                  return const Center(
                    child: Text('No Customers'),
                  );
                } else {
                  return Container(
                    width: 100.w,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 14,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: DataTable(
                        border: TableBorder.all(
                          color: KColors.blackColor,
                          width: 1,
                        ),
                        headingRowColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                          return KColors.blackColor;
                        }),
                        headingTextStyle: KTextStyles.kTitle,
                        columns: [
                          DataColumn(
                            label: Text(
                              'Name',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Active',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Padding(
                              padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                              child: Text(
                                'Actions',
                                style: theme.textTheme.headlineMedium,
                              ),
                            ),
                          ),
                        ],
                        rows: data
                            .map(
                              (e) => DataRow(
                                cells: [
                                  DataCell(Text(
                                    e.customerName.toString(),
                                    style: KTextStyles.kSubtitle,
                                  )),
                                  DataCell(
                                    Switch.adaptive(
                                        activeColor: theme.primaryColor,
                                        value: e.isActive as bool,
                                        onChanged: (va) {
                                          context
                                              .read<CustomerScreenCubit>()
                                              .updateCustomer(e, val: va);
                                        }),
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
                                          IconButton(
                                            onPressed: () =>
                                                editCustomerFn(model: e),
                                            icon: Image.asset(
                                                'assets/icons/delete.png'),
                                          ),
                                          SizedBox(width: 2.w),
                                          IconButton(
                                            onPressed: () => context
                                                .read<CustomerScreenCubit>()
                                                .deleteCustomer(
                                                    e.customerId.toString()),
                                            icon: Image.asset(
                                                'assets/icons/delete.png'),
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
                    ),
                  );
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
