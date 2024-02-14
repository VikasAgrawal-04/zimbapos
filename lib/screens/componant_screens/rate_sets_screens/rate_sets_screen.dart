import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_state.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/indicators/loading_indicator.dart';
import '../../../widgets/my_alert_widget.dart';

class RateSetOverviewScreen extends StatefulWidget {
  const RateSetOverviewScreen({super.key});

  @override
  State<RateSetOverviewScreen> createState() => _RateSetOverviewScreenState();
}

class _RateSetOverviewScreenState extends State<RateSetOverviewScreen> {
  Stream<List<RateSetsModel>> streamRateSet() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    return datatbaseCubit.rateSetsRepository.streamRateSets();
  }

  // toggleFn(int id, bool value) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.rateSetsRepository.changeActive(id, value);
  // }

  // deleteFn(int id) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.rateSetsRepository.deleteRateSetbyID(id);
  // }

  deleteRateset(RateSetsModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.ratesetName}'?",
      //this is for ok button
      () {
        context
            .read<RateSetScreenCubit>()
            .deleteRateSet(e.ratesetId.toString());
        // final dbCubit = DatabaseCubit.dbFrom(context);
        // dbCubit.rateSetsRepository.deleteRateSetbyID(rateset.ratesetId);
        // EasyLoading.showToast('Rate set deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  editRateSetFn({required RateSetsModel model}) {
    context.push(
      AppScreen.editRateSetScreen.path,
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
                      'Rate Sets',
                      style: theme.textTheme.titleLarge,
                    ),

                    //add button
                    CustomButtonNew(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      shadows: const [],
                      height: 8.h,
                      width: 18.w,
                      text: 'Add New Rate Set',
                      style: theme.textTheme.titleMedium,
                      onTap: () {
                        context.read<RateSetScreenCubit>().clearControllers();
                        context.push(AppScreen.createRateSetsScreen.path);
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
              BlocBuilder<RateSetScreenCubit, RateSetScreenState>(
                builder: (context, state) {
                  final list = state.rateSetList;
                  if (state.status == Status.loading) {
                    return const MyLoadingIndicator();
                  }
                  if (list.isEmpty) {
                    return const Center(
                      child: Text('No Rate Sets Found'),
                    );
                  } else {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 14,
                      ),
                      width: 100.w,
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
                          rows: list
                              .map(
                                (e) => DataRow(
                                  cells: [
                                    DataCell(Text(
                                      e.ratesetName.toString(),
                                      style: KTextStyles.kSubtitle,
                                    )),
                                    DataCell(
                                      Switch.adaptive(
                                          activeColor: theme.primaryColor,
                                          value: e.isActive as bool,
                                          onChanged: (va) {
                                            context
                                                .read<RateSetScreenCubit>()
                                                .updateRateSet(e, val: va);
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
                                                  editRateSetFn(model: e),
                                              icon: Image.asset(
                                                  'assets/icons/edit.png'),
                                            ),
                                            SizedBox(width: 2.w),
                                            IconButton(
                                              onPressed: () => deleteRateset(e),
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
