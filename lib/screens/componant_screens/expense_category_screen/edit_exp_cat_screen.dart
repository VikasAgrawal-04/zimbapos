import 'package:flutter/cupertino.dart';
import 'package:zimbapos/models/global_models/expense_category_model.dart';

class UpdateExpenseCategoryScreen extends StatefulWidget {
  final ExpenseCategoryModel item;
  const UpdateExpenseCategoryScreen({
    super.key,
    required this.item,
  });

  @override
  State<UpdateExpenseCategoryScreen> createState() =>
      _UpdateExpenseCategoryScreenState();
}

class _UpdateExpenseCategoryScreenState
    extends State<UpdateExpenseCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
