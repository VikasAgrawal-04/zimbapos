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
import 'package:zimbapos/widgets/my_snackbar_widget.dart';

import '../../../constants/kcolors.dart';
import '../../../widgets/custom_button/custom_button.dart';
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
    final screenSize = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocBuilder<TableScreenCubit, TableScreenState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  //header
                  Container(
                    width: 100.w,
                    height: screenSize.height * 0.15,
                    decoration: BoxDecoration(
                      color: KColors.blackColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(14),
                        bottomRight: Radius.circular(14),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Create Table',
                        style: theme.textTheme.headlineMedium,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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

                  //form
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 12),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //table
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Table Name",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: nullCheckValidator,
                                  // hintText: 'Rate set name',
                                  controller: state.tableNameController,
                                  onChanged: (value) {
                                    state.tableNameController.text =
                                        value.toUpperCase();
                                  },
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),
                          //dropdown for areas
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Choose Area",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: BlocBuilder<AreasScreenCubit,
                                    AreasScreenState>(
                                  builder: (context, state) {
                                    final activeAreas = state.areaList
                                        .where((e) => e.isActive ?? false)
                                        .toList();
                                    return CustomDropDown<String>(
                                      // title: "Choose area",
                                      items: activeAreas
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
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.3),

                          //buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //cancel
                              CustomButtonNew(
                                width: 68.sp,
                                height: 28.sp,
                                text: "Cancel",
                                color: KColors.blackColor,
                                onTap: () async {
                                  //clear controllers and pop
                                  context.pop();
                                },
                              ),

                              //save
                              CustomButtonNew(
                                text: "Submit",
                                width: 68.sp,
                                height: 28.sp,
                                color: theme.primaryColor,
                                onTap: () async {
                                  if (_formKey.currentState!.validate()) {
                                    if (state.selectedAreaId != null) {
                                      // createTable(context);
                                      await context
                                          .read<TableScreenCubit>()
                                          .createTable(
                                            TableModel(
                                              tableName: state
                                                  .tableNameController.text,
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
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
