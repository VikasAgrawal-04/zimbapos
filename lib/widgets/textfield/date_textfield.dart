import 'package:flutter/material.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/widgets/textfield/custom_textfield.dart';

class DateTextField extends StatefulWidget {
  final String? hintText;
  final DateTime? initDate;
  final DateTime? firstDate;

  final DateTime? lasDate;

  final ValueChanged<String>? onChanged;
  const DateTextField(
      {this.initDate,
      this.firstDate,
      this.lasDate,
      this.hintText,
      this.onChanged,
      super.key});

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomTextFieldNew(
      isRequired: true,
      control: controller,
      keyboardType: TextInputType.none,
      isNumber: false,
      textInputAction: TextInputAction.none,
      isReadOnly: true,
      icon: Icons.calendar_today,
      hint: widget.hintText,
      textFieldTap: () async {
        final date = await showDatePicker(
            context: context,
            firstDate: DateTime(1950),
            initialDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)));
        if (date != null) {
          controller.text = Helpers.displayDate(date);
          widget.onChanged?.call(controller.text);
        }
      },
    );
  }
}
