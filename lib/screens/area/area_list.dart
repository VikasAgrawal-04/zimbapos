import 'package:flutter/material.dart';

import '../../models/form_models/area_model.dart';
import '../../widgets/my_alert_widget.dart';
import '../../widgets/my_snackbar_widget.dart';

class AreaListScreen extends StatefulWidget {
  const AreaListScreen({super.key});

  @override
  State<AreaListScreen> createState() => _AreaListScreenState();
}

class _AreaListScreenState extends State<AreaListScreen> {
  //
  TextEditingController areaNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    areaNameController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  // Validation functions
  String? validateNull(String? value) {
    if (value!.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  final List<AreaModel> sampleAreas = [
    AreaModel(areaId: 1, areaName: 'Area 1', rateSet: 15, isActive: true),
    AreaModel(areaId: 2, areaName: 'Area 2', rateSet: 20, isActive: false),
    // Add more sample data as needed
  ];

  int? selectedArea;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        // toolbarHeight: 80,
        iconTheme: const IconThemeData(color: Colors.orangeAccent),
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //     icon: const Icon(Icons.arrow_back)),
        backgroundColor: Colors.white,
        title: const Text(
          "Service details",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                UtilDialog.showMyDialog(
                  context,
                  "Attention",
                  "Do you really want to delete this area?",
                  () {
                    // remove from list
                  },
                  null,
                );
              },
              icon: const Icon(Icons.delete)),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            //area name
            //name
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: areaNameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: Colors.deepOrangeAccent),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  border: OutlineInputBorder(
                    // borderSide:
                    //     const BorderSide(width: 18, color: Colors.white),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  prefixIcon: const Icon(Icons.add_business),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 16,
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  labelText: 'Area name',
                  hintText: 'Enter a area name',
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                ),
                // onChanged: (value) {
                //   userPhoneController.text = value.trim();
                // },
                validator: validateNull,
              ),
            ),

            //for rate dropdown
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 8,
              ),
              child: Text(
                'Payment mode',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
            ),
            //pay dropdown
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 14,
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border.all(
                  color: Colors.orangeAccent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<AreaModel>(
                  isExpanded: true,
                  items: sampleAreas
                          .map((area) => DropdownMenuItem<AreaModel>(
                                value: area,
                                child: Text(
                                  area.areaName,
                                  textAlign: TextAlign.start,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black54,
                                  ),
                                ),
                              ))
                          .toList() ??
                      [],
                  onChanged: (selectedArea) {
                    setState(() {
                      // Handle the selected area
                      // For example, you can access selectedArea.areaId, selectedArea.rateSet, etc.
                    });
                  },
                  value: selectedArea != null
                      ? sampleAreas.firstWhere(
                          (area) => area.areaId == selectedArea,
                        )
                      : null,
                  hint: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Choose an area",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //submit button
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // side: const BorderSide(
                      //   width: 2,
                      //   color: KColors.buttonColor,
                      // ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      backgroundColor: Colors.deepOrangeAccent,
                      shadowColor: Colors.lightBlue,
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    onPressed: () async {
                      if (selectedArea == null) {
                        UtillSnackbar.showSnackBar(
                          context,
                          title: "Alert",
                          body: "Please choose a area",
                          isSuccess: false,
                        );
                      }
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
