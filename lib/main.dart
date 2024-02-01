import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:server/server_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/bloc/global_cubits/device_control_cubit.dart';
import 'package:zimbapos/bloc/global_cubits/device_control_state.dart';
import 'package:zimbapos/global/utils/environment.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/global/utils/helpers/my_secure_storage.dart';
import 'package:zimbapos/repository/isar_service.dart';
import 'package:zimbapos/routers/app_router.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/routers/utils/go_router_functions.dart';
import 'package:zimbapos/screens/componant_screens/set_up_screens/initial_setup_screen.dart';

import 'constants/kcolors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await dotenv.load(fileName: Environment.fileName);
  final ip = await Helpers.getWifiIPAddress();
  SharedPreferences.getInstance().then((pref) {
    Helpers.prefs = pref;
    final dio = Dio(BaseOptions(baseUrl: 'http://$ip:8080'));
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
        return BlocProvider(
          create: (context) => DeviceControlCubit(),
          child: BlocConsumer<DeviceControlCubit, DeviceState>(
            listener: (context, state) {
              // if (state is IncompleteInformation) {
              //   showDialog(
              //     context: context,
              //     builder: (context) => AlertDialog(title: Text(state.message)),
              //   );
              // }
            },
            builder: (context, state) {
              if (state is FinalDeviceState) {
                return MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => DatabaseCubit(
                        state.directory,
                        state.outletId,
                      ),
                    ),
                  ],
                  child: BlocBuilder<DatabaseCubit, IsarService?>(
                    builder: (context, state) {
                      Server(context: context);
                      if (state != null) {}
                      return MaterialApp.router(
                        debugShowCheckedModeBanner: false,
                        routerConfig: AppRouter.router,
                        builder: EasyLoading.init(),
                      );
                    },
                  ),
                );
              } else {
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    colorScheme:
                        ColorScheme.fromSeed(seedColor: KColors.buttonColor),
                    fontFamily: 'PJS',
                    useMaterial3: true,
                  ),
                  home: Scaffold(
                      body: Center(
                    child: (state is IncompleteInformation)
                        ? Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(state.message),
                              ElevatedButton(
                                onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const InitialSetUpScreen(),
                                  ),
                                ),
                                child: const Text('Go to Outlet Setup'),
                              )
                            ],
                          )
                        : const CircularProgressIndicator.adaptive(),
                  )),
                );
              }
            },
          ),
        );
      },
    );
  }
}
