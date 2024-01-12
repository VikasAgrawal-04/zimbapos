import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../models/global_models/tables_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class UpdateTableScreen extends StatefulWidget {
  final TableModel item;
  const UpdateTableScreen({
    super.key,
    required this.item,
  });

  @override
  State<UpdateTableScreen> createState() => _UpdateTableScreenState();
}

class _UpdateTableScreenState extends State<UpdateTableScreen> {
  //
  late final TextEditingController tableName;
  late int? selectedAreaId;

  @override
  void initState() {
    super.initState();
    tableName = TextEditingController();

    tableName.text = widget.item.tableName.toString();
    selectedAreaId = widget.item.areaId;
    log(widget.item.id.toString());
  }

  @override
  void dispose() {
    tableName.dispose();
    super.dispose();
  }

  updateTable(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.tableRepository.updateTable(
      data: TableModel(
        id: widget.item.id,
        tableName: tableName.text,
        areaId: selectedAreaId,
      ),
    );
    EasyLoading.showToast('Table updated!');
    context.pop();
  }

  Future<List<AreasModel?>> getAllAreas() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final areas = await datatbaseCubit.areasRepository.getAreaList();
    // log(rateSets.toString());
    for (var area in areas) {
      log(area!.areaName.toString());
      log(area.id.toString());
    }
    return areas;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Table'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //table
            PrimaryTextField(
              hintText: 'Table name',
              controller: tableName,
              onChanged: (value) {},
            ),
            // TextField(
            //   controller: tableName,
            //   decoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            SizedBox(height: screenSize.height * 0.02),
            //dropdown for areas
            SizedBox(
              height: 50,
              width: screenSize.width,
              child: FutureBuilder<List<AreasModel?>>(
                future: getAllAreas(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator.adaptive();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    final areas = snapshot.data ?? [];

                    return Column(
                      children: [
                        DropdownButton<int>(
                          value: selectedAreaId,
                          hint: const Text("Choose a area"),
                          onChanged: (newValue) {
                            setState(() {
                              selectedAreaId = newValue;
                            });
                          },
                          items: areas.map((area) {
                            return DropdownMenuItem<int>(
                              value: area!.id,
                              child: Text(area.areaName ?? 'error'),
                            );
                          }).toList(),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
            // ElevatedButton(
            //   onPressed: () => updateTable(context),
            //   child: const Text('Update table'),
            // )
          ],
        ),
      ),
      bottomNavigationBar: CustomButton(
        text: "Save",
        onPressed: () => updateTable(context),
      ),
    );
  }
}
