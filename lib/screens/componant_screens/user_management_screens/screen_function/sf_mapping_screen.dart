import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/screen_function_cubit/screen_function_state.dart';
import 'package:zimbapos/widgets/custom_button/back_button.dart';
import 'package:zimbapos/widgets/scaffold/custom_appbar.dart';

import '../../../../bloc/screen_cubits/user_management_cubit/screen_function_cubit/screen_function_cubit.dart';
import '../../../../constants/kcolors.dart';
import '../../../../constants/ktextstyles.dart';
import '../../../../global/utils/status_handler/status_handler.dart';
import '../../../../widgets/indicators/loading_indicator.dart';

class SfMappingScreen extends StatelessWidget {
  const SfMappingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => ScreenFunctionCubit()..init(),
      child: Scaffold(
        appBar: appBar(theme),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backBtn(context),
            //page title
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 18,
              ),
              child: Text(
                'Screen Functions',
                style: theme.textTheme.titleLarge,
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
            BlocBuilder<ScreenFunctionCubit, ScreenFunctionState>(
              builder: (context, state) {
                final list = state.sfList;
                if (state.status == Status.loading) {
                  return const MyLoadingIndicator();
                }
                if (list.isEmpty) {
                  return const Center(
                    child: Text('No Screen Functions'),
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
                              'Code',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Name',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Type',
                              style: theme.textTheme.headlineMedium,
                            ),
                          ),
                        ],
                        rows: list
                            .map(
                              (e) => DataRow(
                                cells: [
                                  DataCell(Text(
                                    e.scrnFnId.toString(),
                                    style: KTextStyles.kSubtitle,
                                  )),
                                  DataCell(Text(
                                    e.scrnFnName.toString(),
                                    style: KTextStyles.kSubtitle,
                                  )),
                                  DataCell(
                                    Text(
                                      e.type.toString(),
                                      style: KTextStyles.kSubtitle,
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
        )),
      ),
    );
  }
}
