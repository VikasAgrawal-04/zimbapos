import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zimbapos/widgets/textfield/primary_textfield.dart';

class CreateWorkerScreen extends StatefulWidget {
  const CreateWorkerScreen({super.key});

  @override
  State<CreateWorkerScreen> createState() => _CreateWorkersScrenState();
}

class _CreateWorkersScrenState extends State<CreateWorkerScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController nameController;
  late final TextEditingController mobileController;
  String? dropDownValue;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    mobileController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Worker'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              PrimaryTextField(
                hintText: 'Worker Name',
                controller: nameController,
                onChanged: (value) {},
              ),
              SizedBox(height: 5.h),
              DropdownButton(
                value: dropDownValue,
                enableFeedback: true,
                isExpanded: true,
                hint: const Text('Select Role'),
                items: const [
                  DropdownMenuItem(
                    value: 'W',
                    child: Text('Waiter'),
                  ),
                  DropdownMenuItem(
                    value: 'C',
                    child: Text('Caption'),
                  ),
                  DropdownMenuItem(
                    value: 'D',
                    child: Text('Delivery Boy'),
                  ),
                  DropdownMenuItem(
                    value: 'S',
                    child: Text('Steward'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    dropDownValue = value;
                  });
                },
              ),
              SizedBox(height: 5.h),
              PrimaryTextField(
                hintText: 'Mobile No.',
                controller: mobileController,
                onChanged: (value) {},
              ),
              SizedBox(height: 20.h),
              // SizedBox(
              //   width: ,
              //   child: const Divider(),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
