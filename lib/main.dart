import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:server/server_handler.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';
import 'package:zimbapos/routers/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return FutureBuilder<Directory>(
          future: getApplicationCacheDirectory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const MaterialApp(
                debugShowCheckedModeBanner: false,
                home: Scaffold(
                    body: Center(
                  child: CircularProgressIndicator.adaptive(),
                )),
              );
            } else {
              debugPrint('got the path');
              final directory = snapshot.data!;
              return BlocProvider(
                create: (context) => DatabaseCubit(directory),
                child: BlocBuilder<DatabaseCubit, IsarService?>(
                  builder: (context, state) {
                    Server(context: context);
                    return MaterialApp.router(
                      debugShowCheckedModeBanner: false,
                      routerConfig: AppRouter.router,
                      builder: EasyLoading.init(),
                    );
                  },
                ),
              );
            }
          },
        );
      },
    );
  }
}
