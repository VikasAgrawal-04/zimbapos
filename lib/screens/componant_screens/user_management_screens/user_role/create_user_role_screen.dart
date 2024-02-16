import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/user_role_cubits/create/create_user_role_cubit.dart';
import 'package:zimbapos/constants/ktextstyles.dart';
import 'package:zimbapos/helpers/validators.dart';
import 'package:zimbapos/widgets/textfield/primary_textfield.dart';

import '../../../../constants/kcolors.dart';

class CreateUserRoleScreen extends StatefulWidget {
  const CreateUserRoleScreen({super.key});

  @override
  State<CreateUserRoleScreen> createState() => _CreateUserRoleScreenState();
}

class _CreateUserRoleScreenState extends State<CreateUserRoleScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();
    // return BlocProvider(
    //   create: (context) => CreateUserRoleCubit(),
    //   child: BlocConsumer<CreateUserRoleCubit, CreateUserRoleState>(
    //     listener: (context, state) {},
    //     builder: (context, state) {
    //       final cubit = BlocProvider.of<CreateUserRoleCubit>(context);
    //       return Scaffold(
    //         appBar: AppBar(
    //           title: const Text('Create User Role'),
    //         ),
    //         body: PageView(
    //           controller: cubit.pageController,
    //           children: const [
    //             UserRoleNameScreen(),
    //             UserRolePermissionScreen(),
    //           ],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}

// class UserRoleNameScreen extends StatelessWidget {
//   const UserRoleNameScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cubit = BlocProvider.of<CreateUserRoleCubit>(context);
//     return SingleChildScrollView(
//       padding: const EdgeInsets.all(12),
//       child: Form(
//         key: cubit.formKey,
//         child: Column(
//           children: [
//             SizedBox(height: 5.h),
//             PrimaryTextField(
//               hintText: 'Enter Role Name',
//               controller: cubit.roleName,
//               onChanged: (p0) {},
//               validator: nameValidator,
//             ),
//             SizedBox(height: 10.h),
//             ElevatedButton(
//               onPressed: () => cubit.saveRoleFn(),
//               child: const Text('Save'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class UserRolePermissionScreen extends StatelessWidget {
//   const UserRolePermissionScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cubit = BlocProvider.of<CreateUserRoleCubit>(context);
//     final theme = Theme.of(context);
//     return Scaffold(
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(12),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Screen Functionalities',
//               style: KTextStyles.kTitle,
//             ),
//             const Divider(),
//             SizedBox(
//               width: 100.w,
//               child: DataTable(
//                 border: TableBorder.all(
//                   color: KColors.blackColor,
//                   width: 1,
//                 ),
//                 headingRowColor:
//                     MaterialStateColor.resolveWith((Set<MaterialState> states) {
//                   return KColors.blackColor;
//                 }),
//                 headingTextStyle: KTextStyles.kTitle,
//                 columns: [
//                   DataColumn(
//                     label: Text(
//                       'Screens',
//                       style: theme.textTheme.headlineMedium,
//                     ),
//                   ),
//                   DataColumn(
//                     label: Center(
//                       child: Text(
//                         'Can View',
//                         style: theme.textTheme.headlineMedium,
//                       ),
//                     ),
//                   ),
//                   DataColumn(
//                     label: Center(
//                       child: Text(
//                         'Can Edit',
//                         style: theme.textTheme.headlineMedium,
//                       ),
//                     ),
//                   ),
//                 ],
//                 rows: cubit.userRoleScreenFunctionList
//                     .map(
//                       (e) => DataRow(cells: [
//                         DataCell(
//                           Text(
//                             e.screenFunctionName ?? '',
//                             style: KTextStyles.kSubtitle,
//                           ),
//                         ),
//                         DataCell(
//                           Center(
//                             child: Switch.adaptive(
//                                 activeColor: theme.primaryColor,
//                                 value: e.canView ?? false,
//                                 onChanged: (va) {
//                                   // e.canView = va;
//                                   // cubit.refresh();
//                                   cubit.changeCanView(va, e);
//                                 }),
//                           ),
//                         ),
//                         DataCell(
//                           Center(
//                             child: Switch.adaptive(
//                               activeColor: theme.primaryColor,
//                               value: e.canChange ?? false,
//                               onChanged: (va) {},
//                             ),
//                           ),
//                         ),
//                       ]),
//                     )
//                     .toList(),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: ElevatedButton(
//         onPressed: () => cubit.saveAllPermission(),
//         child: const Text('Save User Role'),
//       ),
//     );
//   }
// }
