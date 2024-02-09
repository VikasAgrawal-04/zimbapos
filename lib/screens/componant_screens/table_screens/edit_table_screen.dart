import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_state.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/area_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../models/global_models/tables_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController tableName;
  late String? selectedAreaId;

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
        tableName: tableName.text,
        areaId: selectedAreaId,
      ),
    );
    EasyLoading.showToast('Table updated!');
    context.pop();
  }

  Future<List<AreasModel?>> getAllAreas() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final areas = await datatbaseCubit.areasRepository.getAreas();
    // log(rateSets.toString());
    for (var area in areas) {
      log(area.areaName.toString());
      log(area.id.toString());
    }
    return areas;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Table'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //table
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Table name',
                  controller: tableName,
                  onChanged: (value) {
                    tableName.text = value.toUpperCase();
                  },
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
                  // height: 50,
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
                            Container(
                              padding: const EdgeInsets.all(8),
                              alignment: Alignment.center,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                border: Border.all(
                                  color: KColors.buttonColor,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  value: selectedAreaId,
                                  hint: const Text("Choose a area"),
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedAreaId = newValue;
                                    });
                                  },
                                  items: areas.map((area) {
                                    return DropdownMenuItem<String>(
                                      value: area?.areaId ?? "",
                                      child: Text(area?.areaName ?? 'error'),
                                    );
                                  }).toList(),
                                ),
                              ),
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
        ),
        bottomNavigationBar: BlocBuilder<TableScreenCubit, TableScreenState>(
          builder: (context, state) {
            return CustomButton(
                text: "Save",
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    if (selectedAreaId != null) {
                      // updateTable(context);
                      await context.read<TableScreenCubit>().updateTable(
                            TableModel(
                              outletId: widget.item.outletId,
                              tableId: widget.item.tableId,
                              tableName: tableName.text,
                              areaId: selectedAreaId,
                              customerId: widget.item.customerId,
                              customerName: widget.item.customerName,
                              isSplit: widget.item.isSplit,
                              persons: widget.item.persons,
                              tableStartedAt: widget.item.tableStartedAt,
                              tableStatus: widget.item.tableStatus,
                            ),
                          );

                      context.pop();
                    } else {
                      UtillSnackbar.showSnackBar(
                        context,
                        title: "Alert",
                        body: "Please choose a area",
                        isSuccess: false,
                      );
                    }
                  }
                });
          },
        ),
      ),
    );
  }
}
