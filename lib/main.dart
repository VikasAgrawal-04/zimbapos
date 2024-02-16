import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:server/server_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/bloc/global_cubits/device_control_cubit.dart';
import 'package:zimbapos/bloc/global_cubits/device_control_state.dart';
import 'package:zimbapos/bloc/screen_cubits/areas_screen_cubits/area_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/cateogory_screen_cubit/category_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/customer_screen_cubit/customer_screen_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/item_group_cubits/item_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/rateset_cubits/rateset_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/table_screen_cubits/table_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_cubits/overview/user_role_cubit_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_screen_cubit/user_screen_cubit.dart';
import 'package:zimbapos/global/theme/theme.dart';
import 'package:zimbapos/global/utils/environment.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/repository/isar_service.dart';
import 'package:zimbapos/routers/app_router.dart';
import 'package:zimbapos/screens/system_settings_screens/system_check_screen.dart';

import 'bloc/screen_cubits/customer_category_screen_cubit/customer_category_screen_cubit.dart';
import 'bloc/screen_cubits/item_screen_cubits/item_cubit.dart';
import 'bloc/screen_cubits/main_group_screen_cubits/main_group_cubit.dart';
import 'bloc/screen_cubits/pay_mod_master_cubits/pay_mod_master_cubit.dart';
import 'bloc/screen_cubits/payin_cubits/payin_screen_cubit.dart';
import 'bloc/screen_cubits/payout_cubits/payout_screen_cubit.dart';
import 'bloc/screen_cubits/tax_screen_cubits/tax_cubit.dart';

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
              listener: (context, state) {},
              builder: (context, state) {
                if (state is FinalDeviceState) {
                  print(
                      'State Main Terminal ${state.mainTerminal}\nIP Address ${state.ipAddress}');
                  return MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) => DatabaseCubit(
                          state.directory,
                          state.outletId,
                        ),
                      ),
                      BlocProvider(
                          create: (context) => CategoryScreenCubit()..init()),
                      BlocProvider(
                        create: (context) => AreasScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) => TableScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) => RateSetScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) => TaxScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) => MainGroupScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) => ItemGroupScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) => ItemScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) =>
                            CustomerCategoryScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) => CustomerScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) => PayInScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) => PayOutScreenCubit()..init(),
                      ),
                      BlocProvider(
                        create: (context) => PayModMasterScreenCubit()..init(),
                        lazy: false,
                      ),
                      BlocProvider(
                          create: (context) => UserScreenCubit()..init()),
                      BlocProvider(create: (context) => UserRoleCubit()..init())
                    ],
                    child: BlocBuilder<DatabaseCubit, IsarService?>(
                      builder: (context, state) {
                        Server(context: context);
                        if (state != null) {}
                        return MaterialApp.router(
                          theme: ApplicationTheme.lightTheme,
                          debugShowCheckedModeBanner: false,
                          routerConfig: AppRouter.router,
                          builder: EasyLoading.init(),
                        );
                      },
                    ),
                  );
                } else {
                  return const MaterialApp(
                    home: SystemCheckScreen(),
                  );
                }
              },
            ));
      },
    );
  }
}
