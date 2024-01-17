import 'package:flutter/material.dart';

class OrderDashboardScreen extends StatefulWidget {
  const OrderDashboardScreen({super.key});

  @override
  State<OrderDashboardScreen> createState() => _OrderDashboardScreenState();
}

class _OrderDashboardScreenState extends State<OrderDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    //   return DefaultTabController(
    //       length: apiControl.areas.length,
    //       child: Scaffold(
    //         appBar: AppBar(
    //           leading: IconButton(
    //               onPressed: () async {
    //                 Helpers.deleteString(key: 'id');
    //                 Get.offAll(const LoginScreen());
    //               },
    //               icon: const Icon(Icons.logout_sharp)),
    //           title: TabBar(
    //             enableFeedback: true,
    //             tabs: List.generate(apiControl.areas.length, (index) {
    //               final tab = apiControl.areas[index];
    //               return Tab(child: Text(tab.areaName));
    //             }),
    //             onTap: (index) async {
    //               await apiControl.getTables(areaId: apiControl.areas[index].id);
    //             },
    //           ),
    //         ),
    //         body: TabBarView(
    //           children: [
    //             Padding(
    //               padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
    //               child: GridView.builder(
    //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //                     crossAxisCount: 3,
    //                     crossAxisSpacing: 2.w,
    //                     mainAxisSpacing: 2.h,
    //                   ),
    //                   itemCount: apiControl.tables.length,
    //                   itemBuilder: (_, inde) {
    //                     final table = apiControl.tables[inde];
    //                     return GestureDetector(
    //                       onTap: () {
    //                         Get.to(TableOverviewScreen(
    //                           tableNo: table.tableName,
    //                           tableId: table.id,
    //                         ));
    //                       },
    //                       child: Card(
    //                         elevation: 5,
    //                         color: table.billGiven == "1"
    //                             ? Colors.yellow
    //                             : table.occupied == "1"
    //                                 ? Colors.green
    //                                 : null,
    //                         child: Center(
    //                           child: Column(
    //                             mainAxisSize: MainAxisSize.min,
    //                             children: [
    //                               const Icon(
    //                                 Icons.table_bar,
    //                                 size: 40,
    //                               ),
    //                               Text(table.tableName),
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                     );
    //                   }),
    //             ),
    //           ],
    //         ),
    //       ),
    //     );
  }
}
