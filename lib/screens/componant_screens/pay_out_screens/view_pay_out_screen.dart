import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/pay_out_model.dart';

import '../../../constants/kcolors.dart';

class PayOutDetailsScreen extends StatefulWidget {
  final PayOutModel item;
  const PayOutDetailsScreen({
    super.key,
    required this.item,
  });

  @override
  State<PayOutDetailsScreen> createState() => _PayOutDetailsScreenState();
}

class _PayOutDetailsScreenState extends State<PayOutDetailsScreen> {
  //date time format
  String formatDateTime(DateTime dateTime) {
    return DateFormat('dd MMM yyyy, hh:mm a').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   leading: IconButton(
        //     onPressed: () {},
        //     icon: Image.asset('assets/icons/menu.png', height: 3.h),
        //   ),
        //   actions: [
        //     IconButton(
        //         onPressed: () {},
        //         icon: Image.asset('assets/icons/power_off.png', height: 3.h)),
        //   ],
        //   bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(1.h),
        //     child: Divider(
        //       color: KColors.blackColor,
        //       thickness: 1.0,
        //       endIndent: 1.w,
        //       indent: 1.w,
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    // widget.item.userId.toString(),
                    "Pay Out Details",
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
              SizedBox(height: screenSize.height * 0.02),

              //data below
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Pay In Amount',
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    "${widget.item.amount.toString()}/-",
                    style: theme.textTheme.titleLarge,
                  )),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Pay In Reason',
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    widget.item.reason.toString(),
                    style: theme.textTheme.displayLarge,
                  )),
                ],
              ),
              SizedBox(height: screenSize.height * 0.02),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Pay In DateTime',
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  Expanded(
                      child: Text(
                    formatDateTime(widget.item.dateTime as DateTime),
                    style: theme.textTheme.displayLarge,
                  )),
                ],
              ),
              SizedBox(height: screenSize.height * 0.02),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Expanded(
              //       child: Text(
              //         'Pay In Bill Number',
              //         style: theme.textTheme.titleLarge,
              //       ),
              //     ),
              //     Expanded(
              //         child: Text(
              //       widget.item.billId.toString(),
              //       style: theme.textTheme.displayLarge,
              //     )),
              //   ],
              // ),
              // SizedBox(height: screenSize.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
