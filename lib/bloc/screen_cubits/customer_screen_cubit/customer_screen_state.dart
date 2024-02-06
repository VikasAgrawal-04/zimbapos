import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:zimbapos/global/utils/status_handler/status_handler.dart';

import '../../../models/global_models/customer_model.dart';

class CustomerScreenState extends Equatable {
  final List<CustomerModel> customerList;
  final Status status;
  final TextEditingController customerName;
  final TextEditingController customerEmail;
  final TextEditingController customerMobile;
  final TextEditingController customerAddr1;
  final TextEditingController customerAddr2;
  final TextEditingController customerAddr3;
  final TextEditingController customerCity;
  final TextEditingController customerState;
  final TextEditingController customerCountry;
  final TextEditingController customerPinCode;
  final TextEditingController customerGstNum;
  final TextEditingController creditLimitAmount;
  final TextEditingController balanceBonuspoints;
  final String? selectedCusCatId;
  final String? dateOfBirth;
  final String? anniversaryDate;
  final String? gender;

  const CustomerScreenState({
    required this.customerList,
    this.status = Status.initial,
    required this.customerName,
    required this.customerEmail,
    required this.customerMobile,
    required this.customerAddr1,
    required this.customerAddr2,
    required this.customerAddr3,
    required this.customerCity,
    required this.customerState,
    required this.customerCountry,
    required this.customerPinCode,
    required this.customerGstNum,
    required this.creditLimitAmount,
    required this.balanceBonuspoints,
    this.selectedCusCatId,
    this.dateOfBirth,
    this.anniversaryDate,
    this.gender,
  });

  CustomerScreenState copyWith(
      {List<CustomerModel>? customerList,
      Status? status,
      TextEditingController? customerName,
      TextEditingController? customerEmail,
      TextEditingController? customerMobile,
      TextEditingController? customerAddr1,
      TextEditingController? customerAddr2,
      TextEditingController? customerAddr3,
      TextEditingController? customerCity,
      TextEditingController? customerState,
      TextEditingController? customerCountry,
      TextEditingController? customerPinCode,
      TextEditingController? customerGstNum,
      TextEditingController? creditLimitAmount,
      TextEditingController? balanceBonuspoints,
      String? selectedCusCatId,
      String? dateOfBirth,
      String? anniversaryDate,
      String? gender}) {
    return CustomerScreenState(
        customerList: customerList ?? this.customerList,
        status: status ?? this.status,
        customerName: customerName ?? this.customerName,
        customerEmail: customerEmail ?? this.customerEmail,
        customerMobile: customerMobile ?? this.customerMobile,
        customerAddr1: customerAddr1 ?? this.customerAddr1,
        customerAddr2: customerAddr2 ?? this.customerAddr2,
        customerAddr3: customerAddr3 ?? this.customerAddr3,
        customerCity: customerCity ?? this.customerCity,
        customerState: customerState ?? this.customerState,
        customerCountry: customerCountry ?? this.customerCountry,
        customerPinCode: customerPinCode ?? this.customerPinCode,
        customerGstNum: customerGstNum ?? this.customerGstNum,
        creditLimitAmount: creditLimitAmount ?? this.creditLimitAmount,
        balanceBonuspoints: balanceBonuspoints ?? this.balanceBonuspoints,
        selectedCusCatId: selectedCusCatId ?? this.selectedCusCatId,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        anniversaryDate: anniversaryDate ?? this.anniversaryDate,
        gender: gender ?? this.gender);
  }

  factory CustomerScreenState.initial() {
    return CustomerScreenState(
        customerList: const [],
        customerName: TextEditingController(),
        customerEmail: TextEditingController(),
        customerMobile: TextEditingController(),
        customerAddr1: TextEditingController(),
        customerAddr2: TextEditingController(),
        customerAddr3: TextEditingController(),
        customerCity: TextEditingController(),
        customerState: TextEditingController(),
        customerCountry: TextEditingController(),
        customerPinCode: TextEditingController(),
        customerGstNum: TextEditingController(),
        creditLimitAmount: TextEditingController(),
        balanceBonuspoints: TextEditingController());
  }

  @override
  List<Object?> get props => [
        customerList,
        status,
        customerName,
        customerEmail,
        customerMobile,
        customerAddr1,
        customerAddr2,
        customerAddr3,
        customerCity,
        customerState,
        customerCountry,
        customerPinCode,
        customerGstNum,
        creditLimitAmount,
        balanceBonuspoints,
        selectedCusCatId,
        dateOfBirth,
        anniversaryDate,
        gender
      ];
}
