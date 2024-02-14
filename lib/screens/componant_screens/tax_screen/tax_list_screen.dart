import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/tax_screen_cubits/tax_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/tax_screen_cubits/tax_state.dart';
import 'package:zimbapos/models/global_models/tax_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/indicators/loading_indicator.dart';
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
        context.read<TaxScreenCubit>().deleteTax(e.taxId.toString());
        // final dbCubit = DatabaseCubit.dbFrom(context);
        // dbCubit.taxesRepository.deleteTax(e.id);
        // EasyLoading.showToast('Tax deleted');
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
        body: SingleChildScrollView(
          child: Column(
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
                      'Taxes',
                      style: theme.textTheme.titleLarge,
                    ),

                    //add area button
                    CustomButtonNew(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      shadows: const [],
                      height: 8.h,
                      width: 18.w,
                      text: 'Add New Tax',
                      style: theme.textTheme.titleMedium,
                      onTap: () {
                        context.read<TaxScreenCubit>().clearControllers();
                        context.push(AppScreen.createTaxScreen.path);
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
              BlocBuilder<TaxScreenCubit, TaxScreenState>(
                builder: (context, state) {
                  final list = state.taxList;
                  if (state.status == Status.loading) {
                    return const MyLoadingIndicator();
                  }
                  if (list.isEmpty) {
                    return const Center(
                      child: Text('No Taxes'),
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
                                'Percent',
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
                                          activeColor: theme.primaryColor,
                                          value: e.isActive as bool,
                                          onChanged: (va) {
                                            context
                                                .read<TaxScreenCubit>()
                                                .updateTax(e, val: va);
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
                                                  editTaxFn(model: e),
                                              icon: Image.asset(
                                                  'assets/icons/edit.png'),
                                            ),
                                            SizedBox(width: 2.w),
                                            IconButton(
                                              onPressed: () => deleteTax(e),
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
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
