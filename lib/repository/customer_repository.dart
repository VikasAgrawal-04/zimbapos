import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import '../models/global_models/customer_model.dart';

class CustomerRepository {
  Isar db;
  CustomerRepository(this.db);

  Future<List<CustomerModel>> getAllCustomers() async {
    try {
      return await db.customerModels.filter().isDeletedEqualTo(false).findAll();
    } on IsarError catch (error) {
      debugPrint(error.message);
      return [];
    }
  }

  Future<Tuple2<bool, String>> createCustomer(CustomerModel data) async {
    try {
      final dbItem = db.customerModels
          .filter()
          .outletIdEqualTo(data.outletId)
          .and()
          .mobileEqualTo(data.mobile)
          .findFirstSync();
      if (dbItem == null) {
        data.createDate = DateTime.now();
        db.writeTxnSync(() => db.customerModels.putSync(data));
        return const Tuple2(true, 'Customer Created Succesfully!');
      } else {
        throw IsarError('Customer Already Exists');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updateCustomer(
      {required CustomerModel data}) async {
    try {
      CustomerModel? dbItem = await db.customerModels
          .filter()
          .customerIdEqualTo(data.customerId)
          .and()
          .outletIdEqualTo(data.outletId)
          .and()
          .isDeletedEqualTo(false)
          .findFirst();
      if (dbItem != null) {
        dbItem.customerName = data.customerName;
        dbItem.email = data.email;
        dbItem.mobile = data.mobile;
        dbItem.address1 = data.address1;
        dbItem.address2 = data.address2;
        dbItem.address3 = data.address3;
        dbItem.city = data.city;
        dbItem.state = data.state;
        dbItem.country = data.country;
        dbItem.pincode = data.pincode;
        dbItem.gstNumber = data.gstNumber;
        dbItem.customerCategoryID = data.customerCategoryID;
        dbItem.dateOfBirth = data.dateOfBirth;
        dbItem.anniversaryDate = data.anniversaryDate;
        dbItem.creditLimitAmount = data.creditLimitAmount;
        dbItem.gender = data.gender;
        dbItem.balanceBonusPoints = data.balanceBonusPoints;
        dbItem.isActive = data.isActive;
        db.writeTxnSync(() => db.customerModels.putSync(dbItem));
        return const Tuple2(true, "Customer Updated");
      } else {
        throw IsarError("Customer Not Found");
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<bool> deleteCustomer(String id) async {
    try {
      final dbItem =
          db.customerModels.filter().customerIdEqualTo(id).findFirstSync();
      if (dbItem != null) {
        dbItem.isDeleted = true;
        db.writeTxnSync(() => db.customerModels.putSync(dbItem));
        return true;
      } else {
        throw IsarError('Customer Not Found');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
