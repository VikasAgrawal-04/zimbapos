import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_state.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/widgets/custom_button.dart';
import 'package:zimbapos/widgets/my_snackbar_widget.dart';

import '../../../constants/kcolors.dart';
import '../../../models/global_models/area_model.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateTableScreen extends StatefulWidget {
  const CreateTableScreen({super.key});

  @override
  State<CreateTableScreen> createState() => _CreateTableScreenState();
}

class _CreateTableScreenState extends State<CreateTableScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final tableName = TextEditingController();
  // final customerName = TextEditingController();
  // final persons = TextEditingController();
  String? selectedAreaId;
// =  String? customerId;
  // bool? isSplit;
  // DateTime? tableStartedAt;
  // String? tableStatus;

  @override
  void dispose() {
    tableName.dispose();
    // customerName.dispose();
    super.dispose();
  }

  createTable(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.tableRepository.createTable(
      data: TableModel(
        tableName: tableName.text,
        areaId: selectedAreaId,
      ),
    );
    EasyLoading.showToast('Table Created');
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
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create Table'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //table name
                PrimaryTextField(
                  validator: nullCheckValidator,
                  hintText: 'Table name',
                  controller: tableName,
                  onChanged: (value) {
                    tableName.text = value.toUpperCase();
                  },
                ),
                SizedBox(height: 2.h),
                //dropdown for ratesets
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
                                      value: area?.areaId,
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
                // PrimaryTextField(
                //   validator: nullCheckValidator,
                //   hintText: 'Customer name',
                //   controller: customerName,
                //   onChanged: (value) {
                //     tableName.text = value.toUpperCase();
                //   },
                // ),
                // PrimaryTextField(
                //   validator: nullCheckValidator,
                //   hintText: 'Persons',
                //   controller: persons,
                //   onChanged: (value) {
                //     tableName.text = value.toUpperCase();
                //   },
                // ),
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
                      // createTable(context);
                      await context.read<TableScreenCubit>().updateTable(
                            TableModel(
                              tableName: tableName.text,
                              areaId: selectedAreaId,
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
