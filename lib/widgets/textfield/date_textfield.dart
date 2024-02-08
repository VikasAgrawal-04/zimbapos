import 'package:flutter/material.dart';
import 'package:zimbapos/global/utils/helpers/helpers.dart';
import 'package:zimbapos/widgets/textfield/custom_textfield.dart';

class DateTextField extends StatefulWidget {
  final String? hintText;
  final DateTime? initDate;
  final DateTime? firstDate;
  final String? value;
  final DateTime? lasDate;
  final bool? isRequired;

  final ValueChanged<String>? onChanged;
  const DateTextField(
      {this.initDate,
      this.firstDate,
      this.lasDate,
      this.value,
      this.hintText,
      this.onChanged,
      this.isRequired,
      super.key});

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.value != null) {
        controller.text = widget.value.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextFieldNew(
      isRequired: widget.isRequired ?? true,
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
