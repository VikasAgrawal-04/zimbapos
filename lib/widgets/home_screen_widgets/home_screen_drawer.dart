import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35.w,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ZimbaPOS'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Divider(),
            ListTile(
              title: const Text('Settings'),
              leading: const Icon(CupertinoIcons.settings),
              onTap: () => context.push(AppScreen.settingsOverviewScreen.path),
            )
          ],
        ),
      ),
    );
  }
}
