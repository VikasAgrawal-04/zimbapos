import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_state.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/widgets/my_alert_widget.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/indicators/loading_indicator.dart';

class AreasOverviewScreen extends StatefulWidget {
  const AreasOverviewScreen({super.key});

  @override
  State<AreasOverviewScreen> createState() => _AreasOverviewScreenState();
}

class _AreasOverviewScreenState extends State<AreasOverviewScreen> {
  //
  Stream<List<AreasModel>> streamForAreas() {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    // log(datatbaseCubit.rateSetsRepository.getRateSets().toString());
    return datatbaseCubit.areasRepository.streamAreas();
  }

  //fetch ratesets and compare their ids and show ratesetname in area list
  Future<List<RateSetsModel?>> getAllRateSets() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final rateSets = await datatbaseCubit.rateSetsRepository.getRateSets();
    // log(rateSets.toString());
    for (var rateSet in rateSets) {
      log(rateSet!.ratesetName.toString());
    }
    return rateSets;
  }

  // toggleAreaFn(int id, bool value) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.areasRepository.changeActiveArea(id, value);
  // }

  // deleteAreaFn(int id) {
  //   final datatbaseCubit = DatabaseCubit.dbFrom(context);
  //   datatbaseCubit.areasRepository.deleteAreabyID(id);
  // }

  deleteArea(AreasModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.areaName}'?",
      //this is for ok button
      () {
        context.read<AreasScreenCubit>().deleteArea(
              e.areaId.toString(),
            );
        // final dbCubit = DatabaseCubit.dbFrom(context);
        // dbCubit.areasRepository.deleteAreabyID(area.id);
        // EasyLoading.showToast('Area deleted');
        // context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateAreas(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.areasRepository.changeActiveArea(id, value);
  }

  editAreaFn({required AreasModel model}) {
    context.push(
      AppScreen.editAreaScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocBuilder<AreasScreenCubit, AreasScreenState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/menu.png', height: 3.h),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon:
                        Image.asset('assets/icons/power_off.png', height: 3.h)),
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
                        width: 8.w,
                        text: 'Add New Area',
                        style: theme.textTheme.titleMedium,
                        onTap: () {
                          context.read<AreasScreenCubit>().clearControllers();
                          context.push(AppScreen.createAreasScreen.path);
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

                //title and filter
                Padding(
                  padding: const EdgeInsets.only(
                    top: 18,
                    left: 24,
                    right: 24,
                    bottom: 18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'All Areas',
                        style: theme.textTheme.titleMedium,
                      ),

                      //add area button
                      CustomButtonNew(
                        shadows: const [],
                        height: 3.5.h,
                        width: 6.w,
                        text: 'Filter',
                        color: Colors.grey.shade200,
                        style: theme.textTheme.bodyMedium,
                        onTap: () {
                          //filter
                        },
                      ),
                    ],
                  ),
                ),

                // displaying tables grouped with areas
                BlocBuilder<AreasScreenCubit, AreasScreenState>(
                  builder: (context, state) {
                    final data = state.areaList;
                    if (state.status == Status.loading) {
                      return const MyLoadingIndicator();
                    }
                    if (data.isEmpty) {
                      return const Center(
                        child: Text('No Areas'),
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
                              return KColors
                                  .blackColor; // Set black color for the heading row
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
                                  'Charges',
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
                                        e.areaName.toString(),
                                        style: KTextStyles.kSubtitle,
                                      )),
                                      DataCell(Text(
                                        "${e.extraChargePercent.toString()}%",
                                        style: KTextStyles.kSubtitle,
                                      )),
                                      DataCell(
                                        Switch.adaptive(
                                          activeColor: theme.primaryColor,
                                          value: e.isActive as bool,
                                          onChanged: (va) {
                                            context
                                                .read<AreasScreenCubit>()
                                                .updateArea(e, val: va);
                                          },
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
                                              IconButton(
                                                onPressed: () =>
                                                    editAreaFn(model: e),
                                                icon: Image.asset(
                                                    'assets/icons/delete.png'),
                                              ),
                                              SizedBox(width: 2.w),
                                              IconButton(
                                                onPressed: () => deleteArea(e),
                                                icon: Image.asset(
                                                    'assets/icons/delete.png'),
                                              ),
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
          );
        },
      ),
    );
  }
}
