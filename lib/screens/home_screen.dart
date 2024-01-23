import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/cubits/database/database_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/home_page_cubits.dart/home_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/home_page_cubits.dart/home_state.dart';
import 'package:zimbapos/constants/kcolors.dart';
import 'package:zimbapos/constants/ktextstyles.dart';
import 'package:zimbapos/models/system_models/home_shortcut_model.dart';
import 'package:zimbapos/routers/utils/extensions/screen_name.dart';
import 'package:zimbapos/screens/ordering%20screens/order_dashboard_screen.dart';
import 'package:zimbapos/widgets/custom_button/custom_button.dart';
import 'package:zimbapos/widgets/my_alert_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController scrollController;

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
          title: const Text('Screens'),
          content: SizedBox(
            width: 50.w,
            child: SingleChildScrollView(
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
                              child: Card(
                                elevation: 3,
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
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      scrollController = ScrollController();
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        appBar: _buildAppbar(),
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
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    elevation: 6,
                                    shadowColor: Colors.black.withOpacity(0.6),
                                  ),
                                  onPressed: homeShortcut.gridPosition != -1
                                      ? () => context.push(homeShortcut.path!)
                                      : () => openAddScreen(index, context),
                                  child: homeShortcut.gridPosition != -1
                                      ? Stack(
                                          children: [
                                            Positioned(
                                              top: 0,
                                              right: 0,
                                              child: IconButton(
                                                onPressed: () {
                                                  UtilDialog.showMyDialog(
                                                    context,
                                                    "Alert",
                                                    "Do you want to delete shortcut?",
                                                    () {
                                                      deleteHomeShortcut(
                                                          homeShortcut.isarId);
                                                      context.pop();
                                                    },
                                                    null,
                                                  );
                                                },
                                                icon: Icon(
                                                  CupertinoIcons.delete,
                                                  size: 15.sp,
                                                ),
                                              ),
                                            ),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                    homeShortcut.title ?? '')),
                                          ],
                                        )
                                      : const Icon(CupertinoIcons.add),
                                );
                              }

                              return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                onPressed: () => openAddScreen(index, context),
                                child: const Icon(CupertinoIcons.add),
                              );
                            },
                          ),
                        ),
                        CustomButtonNew(
                          margin: EdgeInsets.symmetric(vertical: 1.h),
                          text: 'Ordering Dashboard',
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return OrderDashboardScreen();
                            }));
                            // context.push(AppScreen.orderDashboardScreen.path);
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
      title: const Text('Home Screen'),
      actions: [
        IconButton(
            onPressed: () {
              // context.push(AppScreen.vendorScreen.path);
              context.push(AppScreen.expenseCategoryScreen.path);
              // context.push(AppScreen.expensesScreen.path);
            },
            icon: const Icon(Icons.open_in_new_outlined)),
        BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          return AnimatedOpacity(
            opacity: state.animationValue,
            duration: const Duration(milliseconds: 400),
            child: AnimatedContainer(
              margin: EdgeInsets.only(right: 4.w),
              duration: const Duration(milliseconds: 400),
              width: 10.w,
              height: 2.5.h,
              decoration: BoxDecoration(
                color: KColors.greenBlinkColor,
                shape: BoxShape.circle,
              ),
            ),
          );
        }),
        BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: Text('IP Address : ${state.ipAddress}'),
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
];

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () => context.push(AppScreen.rateSetScreen.path),
            child: const Text('Rate Sets'),
          ),
          SizedBox(height: 2.h),
          ElevatedButton(
            onPressed: () => context.push(AppScreen.tableScreen.path),
            child: const Text('Tables'),
          ),
          SizedBox(height: 2.h),
          ElevatedButton(
            onPressed: () => context.push(AppScreen.customerCategory.path),
            child: const Text('Customer Category'),
          ),
          SizedBox(height: 2.h),
          ElevatedButton(
            onPressed: () => context.push(AppScreen.initialSetUpScreen.path),
            child: const Text('Intro Screen'),
          ),
          SizedBox(height: 2.h),
          ElevatedButton(
            onPressed: () => context.push(AppScreen.workerOverviewScreen.path),
            child: const Text('Worker Screen'),
          ),
          SizedBox(height: 2.h),
          ElevatedButton(
            onPressed: () => context.push(AppScreen.category.path),
            child: const Text('Category'),
          ),
          //areas
          ElevatedButton(
            onPressed: () => context.push(AppScreen.areasScreen.path),
            child: const Text('Areas'),
          ),
        ],
      ),
    );
  }
}
