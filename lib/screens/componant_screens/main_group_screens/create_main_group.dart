import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../helpers/validators.dart';
import '../../../models/global_models/category_model.dart';
import '../../../models/global_models/main_group_model.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/my_snackbar_widget.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class CreateMainGroupScreen extends StatefulWidget {
  const CreateMainGroupScreen({super.key});

  @override
  State<CreateMainGroupScreen> createState() => _CreateMainGroupScreenState();
}

class _CreateMainGroupScreenState extends State<CreateMainGroupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController mainGroupNameController;
  String? catId;
  String? outletId;

  @override
  void initState() {
    super.initState();
    mainGroupNameController = TextEditingController();
    outletId = BlocProvider.of<DatabaseCubit>(context).outletId;
  }

  @override
  void dispose() {
    mainGroupNameController.dispose();
    super.dispose();
  }

  createMainGroupFn(BuildContext context) {
    final db = DatabaseCubit.dbFrom(context);
    db.mainGroupRepository.createMainGroup(MainGroupModel(
      // outletId: int.parse(outletId.toString()),
      categoryId: catId,
      mainGroupName: mainGroupNameController.text,
    ));
    EasyLoading.showToast('Main group updated');
    context.pop();
  }

  //get categories
  Future<List<CategoryModel?>> getAllCategories() async {
    final datatbaseCubit = DatabaseCubit.dbFrom(context);
    final categoryList =
        await datatbaseCubit.categoryRepository.getAllCategory();
    // log(rateSets.toString());
    for (var cat in categoryList) {
      log(cat.categoryName.toString());
    }
    return categoryList;
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('create main group'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: screenSize.height * 0.04),
                  //Item name
                  PrimaryTextField(
                    validator: nullCheckValidator,
                    hintText: 'Main group name',
                    controller: mainGroupNameController,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: screenSize.height * 0.02),

                  //dropdown for category id
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Category:",
                      style: KTextStyles.kTitle,
                    ),
                  ),
                  SizedBox(
                    // height: 50,
                    width: screenSize.width,
                    child: FutureBuilder<List<CategoryModel?>>(
                      future: getAllCategories(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const CircularProgressIndicator.adaptive();
                        } else if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error}');
                        } else {
                          final rateSets = snapshot.data ?? [];

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
                                    value: catId,
                                    isExpanded: true,
                                    hint: const Text("Choose a category"),
                                    onChanged: (newValue) {
                                      setState(() {
                                        catId = newValue;
                                      });
                                    },
                                    items: rateSets.map((cat) {
                                      return DropdownMenuItem<String>(
                                        value: cat?.categoryid,
                                        child:
                                            Text(cat?.categoryName ?? 'error'),
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

                  SizedBox(height: screenSize.height * 0.02),
                  // ElevatedButton(
                  //   onPressed: () => updateAreaFn(context, widget.item.id),
                  //   child: const Text('Update area'),
                  // )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
            text: "Save",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (catId != null) {
                  createMainGroupFn(context);
                  // if (itemGroupId != null) {
                  //   if (taxId != null) {
                  //     createItemFn(context);
                  //   } else {
                  //     UtillSnackbar.showSnackBar(
                  //       context,
                  //       title: "Alert",
                  //       body: "Please choose a tax type",
                  //       isSuccess: false,
                  //     );
                  //   }
                  // } else {
                  //   UtillSnackbar.showSnackBar(
                  //     context,
                  //     title: "Alert",
                  //     body: "Please choose a item group",
                  //     isSuccess: false,
                  //   );
                  // }
                } else {
                  UtillSnackbar.showSnackBar(
                    context,
                    title: "Alert",
                    body: "Please choose a category",
                    isSuccess: false,
                  );
                }
              }
            }),
      ),
    );
  }
}
