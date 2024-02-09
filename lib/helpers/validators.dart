import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;

String? emailValidator(String? text) {
  if (text != null) {
    if (validator.isEmail(text)) {
      return null;
    } else {
      return 'Please enter valid email';
    }
  } else {
    return 'Please Enter your email';
  }
}

String? nameValidator(String? text) {
  if (text != null && text.isNotEmpty) {
    if (text.length < 2) {
      return 'Name Should me atleast 2 charactor long';
    }
  } else {
    return 'Please Enter Name';
  }
  return null;
}

String? nullCheckValidator(String? text) {
  if (text == null || text.isEmpty) {
    return 'This field is required';
  } else {
    return null;
  }
}

String? integerValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'This field is required';
  }
  //to check if the entered value contains only numeric characters
  if (!RegExp(r'^[0-9]+$').hasMatch(value.toString())) {
    return 'Must contain only numbers';
  }

  return null;
}

String? doubleValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'This field is required';
  }
  //to check if the entered value contains only numeric characters
  if (!RegExp(r'^[0-9]+(\.[0-9]+)?$').hasMatch(value.toString())) {
    return 'Must contain only numbers';
  }

  return null;
}

String? addressValidator(String? text) {
  if (text != null && text.isNotEmpty) {
    if (text.length < 2) {
      return 'Address  Should be atleast 2 characters long';
    }
  } else {
    return 'Please enter the Address';
  }
  return null;
}

String? passwordValidator(String? text) {
  if (text != null) {
    if (text.isEmpty) {
      return "Password can't be empty";
    } else if (!validator.isLength(text, 3)) {
      return 'Password must be atleast 3 characters long';
    }
  } else {
    return 'Please enter password';
  }
  return null;
}

String? mobileNumberValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter mobile number';
  }
  if (validator.isNumeric(value)) {
    return null;
  } else {
    return 'Enter valid Mobile Number';
  }
}

//New Password Validators
String? validateNewPassword({
  required String? value,
  required TextEditingController contoller,
  required BuildContext context,
}) {
  if (value == null || value.isEmpty) {
    return 'Please re-enter new passwors';
  }
  if (value != contoller.text) {
    return "Password doesn't match";
  }
  return null;
}

String? oldPasswordValidator(String? text, BuildContext context) {
  if (text != null) {
    if (text.isEmpty) {
      return "Password can't be empty";
    } else if (!validator.isLength(text, 3)) {
      return "Password must be atleast 3 characters long";
    }
  } else {
    return "Please enter old password";
  }
  return null;
}
