import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/models/global_models/payments_model.dart';

import '../../../bloc/cubits/database/database_cubit.dart';
import '../../../constants/ktextstyles.dart';
import '../../../routers/utils/extensions/screen_name.dart';
import '../../../widgets/my_alert_widget.dart';

class PaymentListScreen extends StatefulWidget {
  const PaymentListScreen({super.key});

  @override
  State<PaymentListScreen> createState() => _PaymentListScreenState();
}

class _PaymentListScreenState extends State<PaymentListScreen> {
  //
  Stream<List<PaymentModel>> getPaymentList() {
    final dbCubit = DatabaseCubit.dbFrom(context);
    return dbCubit.paymentsRepository.streamPayments();
  }

  deletePayment(PaymentModel e) {
    UtilDialog.showMyDialog(
      context,
      "Alert",
      "Do you want to delete payment?",
      //this is for ok button
      () {
        final dbCubit = DatabaseCubit.dbFrom(context);
        dbCubit.paymentsRepository.deletePayment(e.id);
        EasyLoading.showToast('Payment deleted');
        context.pop();
      },
      // this is for cancel button sending null will perform default pop() action
      null,
    );
  }

  editPaymentFn({required PaymentModel model}) {
    context.push(
      AppScreen.editPaymentsScreen.path,
      extra: model,
    );
  }

  activeDeactivatePayment(int id, bool value) {
    final dbCubit = DatabaseCubit.dbFrom(context);
    dbCubit.paymentsRepository.changeActive(id, value);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Manage payments',
            style: KTextStyles.kBlackAppBarHeader,
          ),
          actions: [
            TextButton.icon(
              onPressed: () =>
                  context.push(AppScreen.createPaymentsScreen.path),
              label: const Text('Add Payment'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: StreamBuilder<List<PaymentModel>>(
          stream: getPaymentList(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            final data = snapshot.data;
            if (data == null || data.isEmpty) {
              return const Center(
                child: Text('No Payments'),
              );
            }
            return SizedBox(
              width: 100.w,
              child: DataTable(
                headingTextStyle: KTextStyles.kTitle,
                columns: [
                  const DataColumn(
                    label: Text('Payment Name'),
                  ),
                  const DataColumn(
                    label: Text('Pay code'),
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
                            e.payTypeName.toString(),
                            style: KTextStyles.kSubtitle,
                          )),
                          DataCell(Text(
                            e.payCode.toString(),
                            style: KTextStyles.kSubtitle,
                          )),
                          DataCell(
                            Switch.adaptive(
                              value: e.isActive as bool,
                              onChanged: (va) =>
                                  activeDeactivatePayment(e.id, va),
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
                                    onPressed: () => editPaymentFn(model: e),
                                    icon: const Icon(Icons.edit),
                                  ),
                                  SizedBox(width: 2.w),
                                  if (e.isUserCreated == true)
                                    IconButton(
                                      onPressed: () => deletePayment(e),
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
      ),
    );
  }
}
