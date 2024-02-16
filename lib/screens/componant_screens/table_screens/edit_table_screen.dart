import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_state.dart';
import 'package:zimbapos/helpers/validators.dart';

import '../../../bloc/screen_cubits/areas_screen_cubits/area_screen_cubit.dart';
import '../../../bloc/screen_cubits/areas_screen_cubits/area_screen_state.dart';
import '../../../constants/kcolors.dart';
import '../../../models/global_models/tables_model.dart';
import '../../../widgets/custom_button/custom_button.dart';
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
                        'Edit Table',
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
                                      await context
                                          .read<TableScreenCubit>()
                                          .updateTable(
                                            TableModel(
                                              tableId: widget.item.tableId,
                                              tableName: state
                                                  .tableNameController.text,
                                              areaId: state.selectedAreaId,
                                              // customerId: widget.item.customerId,
                                              // customerName: widget.item.customerName,
                                              // isSplit: widget.item.isSplit,
                                              // persons: widget.item.persons,
                                              // tableStartedAt: widget.item.tableStartedAt,
                                              // tableStatus: widget.item.tableStatus,
                                            ),
                                          );
                                      // await context.read<AreasScreenCubit>().init();
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
