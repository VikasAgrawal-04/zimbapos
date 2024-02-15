import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/vendor_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/kcolors.dart';
import '../../../constants/ktextstyles.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/my_alert_widget.dart';

class VendorsListScreen extends StatefulWidget {
  const VendorsListScreen({super.key});

  @override
  State<VendorsListScreen> createState() => _VendorsListScreenState();
}

class _VendorsListScreenState extends State<VendorsListScreen> {
  //
  Stream<List<VendorModel>> getVendorsList() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.vendorRepository.streamVendorsList();
  }

  deleteVendor(VendorModel vendor) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete '${vendor.vendorName}'?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.vendorRepository.deleteVendor(vendor.id);
        EasyLoading.showToast('Vendor deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  activeDeactivateVendor(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.vendorRepository.changeActive(id, value);
  }

  editVendorFn({required VendorModel model}) {
    context.push(
      AppScreen.editVendorScreen.path,
      extra: model,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/icons/menu.png', height: 3.h),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset('assets/icons/power_off.png', height: 3.h)),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.h),
            child: Divider(
              color: KColors.blackColor,
              thickness: 1.0,
              endIndent: 1.w,
              indent: 1.w,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //row for back button
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Image.asset(
                    "assets/icons/back.png",
                    height: 5.h,
                  ),
                ),
              ],
            ),

            //page title
            Padding(
              padding: const EdgeInsets.only(
                top: 18,
                left: 24,
                right: 24,
                bottom: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Vendor List',
                    style: theme.textTheme.titleLarge,
                  ),

                  //add area button
                  CustomButtonNew(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    shadows: const [],
                    height: 8.h,
                    width: 18.w,
                    text: 'Add New Area',
                    style: theme.textTheme.titleMedium,
                    onTap: () {
                      // context.read<VendorsScreenCubit>().clearControllers();
                      context.push(AppScreen.createVendorScreen.path);
                    },
                  ),
                ],
              ),
            ),

            //divider
            PreferredSize(
              preferredSize: Size.fromHeight(1.h),
              child: Divider(
                color: KColors.greyFill,
                thickness: 1.0,
                endIndent: 1.w,
                indent: 1.w,
              ),
            ),
            StreamBuilder<List<VendorModel>>(
              stream: getVendorsList(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }
                final data = snapshot.data;
                if (data == null || data.isEmpty) {
                  return const Center(
                    child: Text('No Vendors'),
                  );
                }
                return Container(
                  width: 100.w,
                  child: DataTable(
                    headingTextStyle: KTextStyles.kTitle,
                    columns: [
                      const DataColumn(
                        label: Text('Name'),
                      ),
                      const DataColumn(
                        label: Text('Mobile'),
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
                    rows: data
                        .map(
                          (e) => DataRow(
                            cells: [
                              DataCell(Text(
                                e.vendorName,
                                style: KTextStyles.kSubtitle,
                              )),
                              DataCell(Text(
                                e.mobile.toString(),
                                style: KTextStyles.kSubtitle,
                              )),
                              DataCell(
                                Switch.adaptive(
                                  value: e.isActive ?? false,
                                  onChanged: (va) =>
                                      activeDeactivateVendor(e.id, va),
                                ),
                              ),
                              DataCell(
                                Container(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        onPressed: () => editVendorFn(model: e),
                                        icon: const Icon(Icons.edit),
                                      ),
                                      SizedBox(width: 2.w),
                                      IconButton(
                                        onPressed: () => deleteVendor(e),
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
              },
            ),
          ],
        ),
      ),
    );
  }
}
