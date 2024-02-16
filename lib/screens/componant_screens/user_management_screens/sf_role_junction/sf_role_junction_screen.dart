import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/widgets/custom_button/back_button.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';
import 'package:zimbapos/widgets/scaffold/custom_appbar.dart';

class SfRoleJnListing extends StatelessWidget {
  const SfRoleJnListing({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: appBar(theme),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            backBtn(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Screen/Function For Roles',
                      style: theme.textTheme.displayMedium),
                  CustomButtonNew(
                      height: 8.h,
                      width: 18.w,
                      text: 'Assign Screen/Function To Role',
                      style: theme.textTheme.displaySmall,
                      onTap: () {
                        context.push(AppScreen.createSfJnScreen.path);
                      }),
                ],
              ),
            ),
            Divider(indent: 2.w, endIndent: 2.w, color: KColors.greyFill),
          ],
        ),
      ),
    );
  }
}
