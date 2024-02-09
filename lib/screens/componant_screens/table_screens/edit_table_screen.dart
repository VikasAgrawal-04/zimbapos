import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_state.dart';
import 'package:zimbapos/helpers/validators.dart';

import '../../../bloc/screen_cubits/areas_screen_cubits/area_screen_cubit.dart';
import '../../../bloc/screen_cubits/areas_screen_cubits/area_screen_state.dart';
import '../../../models/global_models/tables_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';
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

  @override
  void initState() {
    super.initState();
    context.read<TableScreenCubit>().fillControllers(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: BlocBuilder<TableScreenCubit, TableScreenState>(
        builder: (context, state) {
          return Scaffold(
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
                      controller: state.tableNameController,
                      onChanged: (value) {
                        state.tableNameController.text = value.toUpperCase();
                      },
                    ),
                    SizedBox(height: screenSize.height * 0.02),
                    //dropdown for areas
                    BlocBuilder<AreasScreenCubit, AreasScreenState>(
                      builder: (context, state) {
                        return CustomDropDown<String>(
                          title: "Choose area",
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
                    await context.read<TableScreenCubit>().updateTable(
                          TableModel(
                            tableId: widget.item.tableId,
                            tableName: state.tableNameController.text,
                            areaId: state.selectedAreaId,
                            // customerId: widget.item.customerId,
                            // customerName: widget.item.customerName,
                            // isSplit: widget.item.isSplit,
                            // persons: widget.item.persons,
                            // tableStartedAt: widget.item.tableStartedAt,
                            // tableStatus: widget.item.tableStatus,
                          ),
                        );
                    await context.read<AreasScreenCubit>().init();
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
