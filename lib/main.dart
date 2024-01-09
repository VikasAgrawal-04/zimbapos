import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:path_provider/path_provider.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/repository/isar_service.dart';
import 'package:zimbapos/routers/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Directory>(
      future: getApplicationCacheDirectory(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: Scaffold(
                body: Center(
              child: CircularProgressIndicator.adaptive(),
            )),
          );
        }
        print('got the path');
        final directory = snapshot.data!;
        return BlocProvider(
          create: (context) => DatabaseCubit(directory),
          child: BlocBuilder<DatabaseCubit, IsarService?>(
            builder: (context, state) => MaterialApp.router(

              builder: EasyLoading.init(),
              routerConfig: AppRouter.router,
            ),
          ),
        );
      },
    );
  }
}
