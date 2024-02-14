import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/home_page_cubits/home_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/home_page_cubits/home_state.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/constants/ktextstyles.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/models/system_models/home_shortcut_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';
import 'package:zimbapos/widgets/home_screen_widgets/home_screen_drawer.dart';
import 'package:zimbapos/widgets/my_alert_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollController = ScrollController();

  Stream<List<HomeShortcutModel>> getList() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.homeSc.getHomeShortcut();
  }

  deleteHomeShortcut(int id) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.homeSc.deleteShortcutbyID(id);
  }

  openAddScreen(int index, BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Screens',
            style: KTextStyles.kHeader,
          ),
          content: SizedBox(
            width: 50.w,
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: screenList
                    .map(
                      (e) => Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                e.gridPosition = index;
                                HomeShortcutModel model = HomeShortcutModel();
                                model.gridPosition = index;
                                model.path = e.path;
                                model.title = e.title;
                                model.userId = '123123';
                                final dbCubit = DatabaseCubit.dbFrom(context);
                                dbCubit.homeSc.createShortcut(data: model);
                                context.pop();
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      // blurStyle: BlurStyle.solid,
                                      color: Colors.grey.shade500,
                                      offset: const Offset(4.0, 4.0),
                                      blurRadius: 12,
                                      spreadRadius: 1.0,
                                    ),
                                    const BoxShadow(
                                      // blurStyle: BlurStyle.outer,
                                      color: Colors.white,
                                      offset: Offset(-3.0, -3.0),
                                      blurRadius: 12,
                                      spreadRadius: 1.0,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Center(
                                    child: Text(
                                      e.title ?? '',
                                      style: KTextStyles.kTitle,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          actions: [
            TextButton(
              autofocus: true,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Close',
                style: KTextStyles.kAlertCancelButton,
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final deviceId = await Helpers.fetchDeviceId();
      log("deviceId $deviceId");
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        appBar: _buildAppbar(),
        drawer: const HomeScreenDrawer(),
        body: OrientationBuilder(
          builder: (context, orientation) =>
              StreamBuilder<List<HomeShortcutModel>>(
            stream: getList(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
              var data = snapshot.data;
              data ?? [];
              return OrientationBuilder(
                builder: (context, orientation) => Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          flex: (orientation.name == Orientation.landscape.name)
                              ? 3
                              : 1,
                          child: GridView.builder(
                            primary: false,
                            padding: EdgeInsets.only(bottom: 2.h),
                            controller: scrollController,
                            itemCount: 9,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:
                                  orientation.name == Orientation.landscape.name
                                      ? 3
                                      : 2,
                              childAspectRatio: 1.8,
                              mainAxisSpacing: 4.w,
                              crossAxisSpacing: 3.w,
                            ),
                            itemBuilder: (context, index) {
                              if (data != null && data.isNotEmpty) {
                                data.sort((a, b) => (a.gridPosition ?? 0)
                                    .compareTo(b.gridPosition ?? 0));

                                final homeShortcut = data.firstWhere(
                                  (element) => element.gridPosition == index,
                                  orElse: () =>
                                      HomeShortcutModel(gridPosition: -1),
                                );
                                return InkWell(
                                  borderRadius: BorderRadius.circular(18),
                                  onTap: homeShortcut.gridPosition != -1
                                      ? () => context.push(homeShortcut.path!)
                                      : () => openAddScreen(index, context),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[50],
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                          // blurStyle: BlurStyle.inner,
                                          color: Colors.grey.shade500,
                                          offset: const Offset(4.0, 4.0),
                                          blurRadius: 12,
                                          spreadRadius: 2.0,
                                        ),
                                        const BoxShadow(
                                          // blurStyle: BlurStyle.inner,
                                          color: Colors.white,
                                          offset: Offset(-3.0, -3.0),
                                          blurRadius: 12,
                                          spreadRadius: 2.0,
                                        ),
                                      ],
                                    ),
                                    child: homeShortcut.gridPosition != -1
                                        ? Stack(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.2,
                                                    maxHeight:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.5,
                                                  ),
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.redAccent,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(12),
                                                      topRight:
                                                          Radius.circular(12),
                                                    ),
                                                  ),
                                                  child: IconButton(
                                                    onPressed: () {
                                                      UtilDialog.showMyDialog(
                                                        context,
                                                        "Alert",
                                                        "Do you want to delete '${homeShortcut.title}' shortcut?",
                                                        () {
                                                          deleteHomeShortcut(
                                                              homeShortcut
                                                                  .isarId);
                                                          context.pop();
                                                        },
                                                        null,
                                                      );
                                                    },
                                                    icon: Icon(
                                                      CupertinoIcons.delete,
                                                      size: 18.sp,
                                                      color: KColors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    homeShortcut.title ?? '',
                                                    style: KTextStyles.kTitle,
                                                  )),
                                            ],
                                          )
                                        : const Icon(CupertinoIcons.add),
                                  ),
                                );
                              }

                              return InkWell(
                                borderRadius: BorderRadius.circular(18),
                                onTap: () => openAddScreen(index, context),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[50],
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        // blurStyle: BlurStyle.solid,
                                        color: Colors.grey.shade500,
                                        offset: const Offset(4.0, 4.0),
                                        blurRadius: 12,
                                        spreadRadius: 2.0,
                                      ),
                                      const BoxShadow(
                                        // blurStyle: BlurStyle.outer,
                                        color: Colors.white,
                                        offset: Offset(-4.0, -4.0),
                                        blurRadius: 12,
                                        spreadRadius: 2.0,
                                      ),
                                    ],
                                  ),
                                  child: const Icon(CupertinoIcons.add),
                                ),
                              );
                            },
                          ),
                        ),
                        CustomButtonNew(
                          margin: EdgeInsets.symmetric(vertical: 1.h),
                          text: 'Ordering Dashboard',
                          onTap: () {
                            context.push(AppScreen.orderDashboardScreen.path);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      title: Text(
        'Home Screen',
        style: KTextStyles.kBlackAppBarHeader,
      ),
      actions: [
        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return AnimatedOpacity(
              opacity: state.animationValue,
              duration: const Duration(milliseconds: 400),
              child: AnimatedContainer(
                margin: EdgeInsets.only(right: 1.w),
                duration: const Duration(milliseconds: 400),
                width: 10.w,
                height: 2.5.h,
                decoration: BoxDecoration(
                  color: KColors.greenBlinkColor,
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
        ),
        BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: Text(
              'IP Address : ${state.ipAddress}',
              style: KTextStyles.kSubtitle,
            ),
          );
        })
      ],
    );
  }
}

List<HomeShortcutModel> screenList = [
  HomeShortcutModel(
    title: 'Rate Sets',
    path: AppScreen.rateSetScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Tables',
    path: AppScreen.tableScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Customer Category',
    path: AppScreen.customerCategory.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Intro Screen',
    path: AppScreen.initialSetUpScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Worker Screen',
    path: AppScreen.workerOverviewScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Category',
    path: AppScreen.category.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Areas',
    path: AppScreen.areasScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Vendors',
    path: AppScreen.vendorScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Expense Categories',
    path: AppScreen.expenseCategoryScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Expense Screen',
    path: AppScreen.expensesScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Taxes Screen',
    path: AppScreen.taxesScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Items Screen',
    path: AppScreen.itemsScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Payments Screen',
    path: AppScreen.paymentsScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Discount Screen',
    path: AppScreen.discountScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'MainGroup Screen',
    path: AppScreen.mainGroupScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'ItemGroup Screen',
    path: AppScreen.itemGroupScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Cards Screen',
    path: AppScreen.cardListScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Customers',
    path: AppScreen.customerScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Pay In',
    path: AppScreen.payInListScreen.path,
    userId: '123123',
  ),
  HomeShortcutModel(
    title: 'Pay Out',
    path: AppScreen.payOutListScreen.path,
    userId: '123123',
  ),
];
