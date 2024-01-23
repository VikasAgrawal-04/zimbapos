import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../models/global_models/tables_model.dart';

class AreaTablesWidget extends StatelessWidget {
  final String areaName;
  final List<TableModel> tables;
  final void Function(TableModel) editTableFn;
  final Function(TableModel) deleteTable;
  final Function(int, bool) activeDeactivateTable;

  const AreaTablesWidget({
    super.key,
    required this.areaName,
    required this.tables,
    required this.editTableFn,
    required this.deleteTable,
    required this.activeDeactivateTable,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$areaName area",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        DataTable(
          columns: const [
            DataColumn(
              label: Text('Name'),
            ),
            DataColumn(
              label: Text('Active'),
            ),
            DataColumn(
              label: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text('Actions'),
              ),
            ),
          ],
          rows: tables
              .map(
                (e) => DataRow(
                  cells: [
                    DataCell(Text(e.tableName.toString())),
                    DataCell(
                      Switch.adaptive(
                        value: e.isActive as bool,
                        onChanged: (va) => activeDeactivateTable(e.id, va),
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
                              icon: const Icon(Icons.edit),
                            ),
                            SizedBox(width: 2.w),
                            IconButton(
                              onPressed: () => deleteTable(e),
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
      ],
    );
  }
}
