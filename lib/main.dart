import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:server/server_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/repository/isar_service.dart';
import 'package:zimbapos/routers/app_router.dart';

import 'constants/kcolors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  SharedPreferences.getInstance().then((pref) {
    Helpers.prefs = pref;
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
    ));
    Helpers.dio = dio;
    
    runApp(const MyApp());
  });
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
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: KColors.buttonColor),
                  fontFamily: 'PJS',
                  useMaterial3: true,
                ),
                home: const Scaffold(
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
