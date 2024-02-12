import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/bloc/screen_cubits/cateogory_screen_cubit/category_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/cateogory_screen_cubit/category_screen_state.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/models/global_models/category_model.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class UpdateCategoryScreen extends StatefulWidget {
  final CategoryModel item;
  const UpdateCategoryScreen({
    super.key,
    required this.item,
  });

  @override
  State<UpdateCategoryScreen> createState() => _UpdateCategoryScreenState();
}

class _UpdateCategoryScreenState extends State<UpdateCategoryScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    context.read<CategoryScreenCubit>().fillControllers(widget.item);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CategoryScreenCubit, CategoryScreenState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Edit category'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryTextField(
                      validator: nullCheckValidator,
                      hintText: 'Category name',
                      controller: state.categoryName,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar:
                BlocBuilder<CategoryScreenCubit, CategoryScreenState>(
              builder: (context, state) {
                return CustomButton(
                    text: "Save",
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await context
                            .read<CategoryScreenCubit>()
                            .updateCategory(
                              widget.item.copyWith(
                                  categoryName: state.categoryName.text),
                            );
                        context.pop();
                      }
                    });
              },
            ),
          );
        },
      ),
    );
  }
}
