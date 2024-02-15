import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/pay_mod_master_cubits/pay_mod_master_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/pay_mod_master_cubits/pay_mod_master_state.dart';
import 'package:zimbapos/widgets/textfield/primary_textfield.dart';

import '../../../constants/kcolors.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/dropdown/custom_dropdown.dart';

class CreatePaymentScreen extends StatefulWidget {
  const CreatePaymentScreen({super.key});

  @override
  State<CreatePaymentScreen> createState() => _CreatePaymentScreenState();
}

class _CreatePaymentScreenState extends State<CreatePaymentScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<PayModMasterScreenCubit, PayModMasterScreenState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  //header
                  Container(
                    width: double.infinity,
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
                        'Create Pay Mode',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 12),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: screenSize.height * 0.04),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Payment type",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Expanded(
                                child: CustomDropDown<String>(
                                  // title: "Tax type",
                                  hint: "Select Pay type",
                                  items: const [
                                    "UPI",
                                    "Bank/Cards",
                                    "Cash",
                                    "Cheque",
                                    "Others",
                                  ],
                                  value: state.paytypeName,
                                  onChanged: context
                                      .read<PayModMasterScreenCubit>()
                                      .onPayModMasterChange,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.02),
                          Visibility(
                            visible: state.isOthers,
                            child: Row(
                              children: [
                                //label
                                Expanded(
                                  child: Text(
                                    "Payment Name",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),

                                //text field
                                Expanded(
                                  child: PrimaryTextField(
                                    controller: state.payTypeController,
                                    onChanged: (val) {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

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
                                .read<PayModMasterScreenCubit>()
                                .createPayModMaster();

                            context.pop();
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
