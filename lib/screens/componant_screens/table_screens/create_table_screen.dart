import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_state.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_state.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/widgets/custom_button.dart';
import 'package:zimbapos/widgets/my_snackbar_widget.dart';

import '../../../widgets/dropdown/custom_dropdown.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateTableScreen extends StatefulWidget {
  const CreateTableScreen({super.key});

  @override
  State<CreateTableScreen> createState() => _CreateTableScreenState();
}

class _CreateTableScreenState extends State<CreateTableScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: BlocBuilder<TableScreenCubit, TableScreenState>(
        builder: (context, state) {
          return Scaffold(
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
                      controller: state.tableNameController,
                      onChanged: (value) {
                        state.tableNameController.text = value.toUpperCase();
                      },
                    ),
                    SizedBox(height: 2.h),
                    //dropdown for ratesets
                    BlocBuilder<AreasScreenCubit, AreasScreenState>(
                      builder: (context, state) {
                        return CustomDropDown<String>(
                          title: "Choose Area",
                          items: state.areaList
                              .map((e) => e.areaName ?? 'error')
                              .toList(),
                          itemValues: state.areaList
                              .map((e) => e.areaId ?? "null")
                              .toList(),
                          value: context
                              .read<TableScreenCubit>()
                              .state
                              .selectedAreaId,
                          hint: "Choose a area",
                          onChanged: (value) {
                            context
                                .read<TableScreenCubit>()
                                .onAreaChange(value);
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: CustomButton(
              text: "Save",
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (state.selectedAreaId != null) {
                    // createTable(context);
                    await context.read<TableScreenCubit>().createTable(
                          TableModel(
                            tableName: state.tableNameController.text,
                            areaId: state.selectedAreaId,
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
              },
            ),
          );
        },
      ),
    );
  }
}
