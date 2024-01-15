import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/vendor_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../routers/utils/extensions/screen_name.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Vendors'),
        actions: [
          TextButton.icon(
            onPressed: () => context.push(AppScreen.createVendorScreen.path),
            label: const Text('Add Vendors'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: StreamBuilder<List<VendorModel>>(
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
          return SizedBox(
            width: 100.w,
            child: DataTable(
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
                        DataCell(Text(e.vendorName)),
                        DataCell(Text(e.mobile.toString())),
                        DataCell(
                          Switch.adaptive(
                            value: e.isActive ?? false,
                            onChanged: (va) => activeDeactivateVendor(e.id, va),
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
    );
  }
}
