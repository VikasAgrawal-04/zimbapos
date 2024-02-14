import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_state.dart';
import 'package:zimbapos/helpers/validators.dart';

import '../../../constants/kcolors.dart';
import '../../../models/global_models/rate_sets_model.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/textfield/primary_textfield.dart';

class EditRateSetScreen extends StatefulWidget {
  final RateSetsModel item;
  const EditRateSetScreen({
    super.key,
    required this.item,
  });

  @override
  State<EditRateSetScreen> createState() => _EditRateSetScreenState();
}

class _EditRateSetScreenState extends State<EditRateSetScreen> {
  //
  @override
  void initState() {
    super.initState();
    context.read<RateSetScreenCubit>().fillControllers(widget.item);
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: BlocBuilder<RateSetScreenCubit, RateSetScreenState>(
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
                        'Edit Rate Set',
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
                          //rate set name
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Rate Set Name",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: PrimaryTextField(
                                  validator: nullCheckValidator,
                                  // hintText: 'Rate set name',
                                  controller: state.rateSetNameController,
                                  onChanged: (value) {},
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
                                    await context
                                        .read<RateSetScreenCubit>()
                                        .updateRateSet(
                                          RateSetsModel(
                                            ratesetId: widget.item.ratesetId,
                                            ratesetName: state
                                                .rateSetNameController.text,
                                          ),
                                        );

                                    context.pop();
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
