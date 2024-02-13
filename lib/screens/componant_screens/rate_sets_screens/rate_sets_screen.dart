import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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

  deleteWorker(RateSetsModel rateset) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${rateset.ratesetName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.rateSetsRepository.deleteRateSetbyID(rateset.ratesetId);
        EasyLoading.showToast('Rate set deleted');
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
          title: Text(
            'Rate Sets',
            style: KTextStyles.kBlackAppBarHeader,
          ),
          actions: [
            TextButton.icon(
              onPressed: () {
                context.read<RateSetScreenCubit>().clearControllers();
                context.push(AppScreen.createRateSetsScreen.path);
              },
              label: const Text('Add Rateset'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: BlocBuilder<RateSetScreenCubit, RateSetScreenState>(
          builder: (context, state) {
            final list = state.rateSetList;
            if (state.status == Status.loading) {
              return const MyLoadingIndicator();
            }
            if (list.isEmpty) {
              return const Center(
                child: Text('No ratesets'),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: () =>
                                            editRateSetFn(model: e),
                                        icon: Image.asset(
                                            'assets/icons/delete.png'),
                                      ),
                                      SizedBox(width: 2.w),
                                      IconButton(
                                        onPressed: () => context
                                            .read<RateSetScreenCubit>()
                                            .deleteRateSet(
                                                e.ratesetId.toString()),
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
      ),
    );
  }
}
