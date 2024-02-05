import 'package:flutter/cupertino.dart';
import 'package:zimbapos/models/global_models/customer_model.dart';

class EditCustomerScreen extends StatefulWidget {
  final CustomerModel item;
  const EditCustomerScreen({
    super.key,
    required this.item,
  });

  @override
  State<EditCustomerScreen> createState() => _EditCustomerScreenState();
}

class _EditCustomerScreenState extends State<EditCustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
