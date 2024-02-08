import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/main_group_cubit.dart';
import 'package:zimbapos/bloc/screen_cubits/main_group_screen_cubits/mian_group_state.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../bloc/screen_cubits/customer_screen_cubit/customer_screen_cubit.dart';
import '../../../constants/ktextstyles.dart';
import '../../../global/utils/status_handler/status_handler.dart';
import '../../../models/global_models/main_group_model.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/indicators/loading_indicator.dart';
import '../../../widgets/my_alert_widget.dart';

class MainGroupListScreen extends StatefulWidget {
  const MainGroupListScreen({super.key});

  @override
  State<MainGroupListScreen> createState() => _MainGroupListScreenState();
}

class _MainGroupListScreenState extends State<MainGroupListScreen> {
  //
  Stream<List<MainGroupModel>> mainGroupStream() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.mainGroupRepository.streamMainGroups();
  }

  deleteMainGroup(MainGroupModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${e.mainGroupName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.mainGroupRepository.deleteMainGroup(e.id.toString());
        EasyLoading.showToast('Main group deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateMainGroup(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.mainGroupRepository.changeActive(id, value);
  }

  editMainGroupFn({required MainGroupModel model}) {
    context.push(
      AppScreen.editMainGroupScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Main group list',
            style: KTextStyles.kBlackAppBarHeader,
          ),
          actions: [
            TextButton.icon(
              onPressed: () {
                context.read<CustomerScreenCubit>().clearControllers();
                context.push(AppScreen.createMainGroupScreen.path);
              },
              label: const Text('Add main group'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: BlocBuilder<MainGroupScreenCubit, MainGroupScreenState>(
          builder: (context, state) {
            final list = state.mainGroupList;
            if (state.status == Status.loading) {
              return const MyLoadingIndicator();
            }
            if (list.isEmpty) {
              return const Center(
                child: Text('No Main Groups'),
              );
            } else {
              return SizedBox(
                width: 100.w,
                child: DataTable(
                  headingTextStyle: KTextStyles.kTitle,
                  columns: [
                    const DataColumn(
                      label: Text('Name'),
                    ),
                    const DataColumn(
                      label: Text('Active'),
                    ),
                    DataColumn(
                      label: Padding(
                        padding: EdgeInsets.fromLTRB(10.w, 0, 0, 0),
                        child: const Text('Actions'),
                      ),
                    ),
                  ],
                  rows: list
                      .map(
                        (e) => DataRow(
                          cells: [
                            DataCell(Text(
                              e.mainGroupName.toString(),
                              style: KTextStyles.kSubtitle,
                            )),
                            DataCell(
                              Switch.adaptive(
                                value: e.isActive as bool,
                                onChanged: (va) {
                                  context
                                      .read<MainGroupScreenCubit>()
                                      .updateMainGroup(e, val: va);
                                },
                              ),
                            ),
                            DataCell(
                              Container(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () =>
                                          editMainGroupFn(model: e),
                                      icon: const Icon(Icons.edit),
                                    ),
                                    SizedBox(width: 2.w),
                                    IconButton(
                                      onPressed: () => context
                                          .read<MainGroupScreenCubit>()
                                          .deleteMainGroup(
                                              e.mainGroupId.toString()),
                                      icon: const Icon(CupertinoIcons.delete),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
