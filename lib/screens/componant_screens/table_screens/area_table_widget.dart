import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_cubit.dart';
import 'package:zimbapos/constants/ktextstyles.dart';

import '../../../constants/kcolors.dart';
import '../../../models/global_models/tables_model.dart';

class AreaTablesWidget extends StatelessWidget {
  final String areaName;
  final List<TableModel> tables;
  final void Function(TableModel) editTableFn;
  final Function(TableModel) deleteTable;
  // final Function(int, bool) activeDeactivateTable;

  const AreaTablesWidget({
    super.key,
    required this.areaName,
    required this.tables,
    required this.editTableFn,
    required this.deleteTable,
    // required this.activeDeactivateTable,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            areaName,
            style: KTextStyles.kHeaderSub,
          ),
        ),
        Container(
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
              headingRowColor:
                  MaterialStateColor.resolveWith((Set<MaterialState> states) {
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
                    padding: EdgeInsets.fromLTRB(45.sp, 0, 0, 0),
                    child: Text(
                      'Actions',
                      style: theme.textTheme.headlineMedium,
                    ),
                  ),
                ),
              ],
              rows: tables
                  .map(
                    (e) => DataRow(
                      cells: [
                        DataCell(Text(
                          e.tableName.toString(),
                          style: KTextStyles.kSubtitle,
                        )),
                        DataCell(
                          Switch.adaptive(
                            activeColor: theme.primaryColor,
                            value: e.isActive as bool,
                            onChanged: (va) {
                              context
                                  .read<TableScreenCubit>()
                                  .updateTable(e, val: va);
                            },
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
                                  onPressed: () => editTableFn(e),
                                  icon: Image.asset('assets/icons/edit.png'),
                                ),
                                SizedBox(width: 2.w),
                                IconButton(
                                  onPressed: () => deleteTable(e),
                                  icon: Image.asset('assets/icons/delete.png'),
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
        ),
        tables.isEmpty
            ? Center(
                child: Text(
                  "No tables added for this area",
                  style: KTextStyles.kSubtitle,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
