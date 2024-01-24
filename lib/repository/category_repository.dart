import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:zimbapos/models/global_models/category_model.dart';

class CategoryRepository {
  Isar db;
  CategoryRepository(this.db);

  Stream<List<CategoryModel>> streamCategory() {
    return db.categoryModels
        .filter()
        .isDeletedEqualTo(false)
        .watch(fireImmediately: true);
  }

  Future<void> changeActive(int id, bool isActive) async {
    CategoryModel? model = await db.categoryModels.get(id);
    if (model != null) {
      model.isActive = isActive;
      db.writeTxnSync(() {
        db.categoryModels.putSync(model);
      });
    }
  }

  void createCategory({required CategoryModel data}) {
    db.writeTxnSync(() => db.categoryModels.putSync(data));
  }

  void updateCategory({required CategoryModel data}) async {
    CategoryModel? dbItem = await db.categoryModels.get(data.id);
    if (dbItem != null) {
      dbItem.categoryName = data.categoryName;

      db.writeTxnSync(() => db.categoryModels.putSync(dbItem));
    }
  }

  void deleteCategory(int id) {
    db.writeTxnSync(() => db.categoryModels.deleteSync(id));
  }

  //APIs

  Future<List<CategoryModel>> getAllCategory() {
    return db.categoryModels.filter().isDeletedEqualTo(false).findAll();
  }

  Future<Tuple2<bool, String>> createCategoryApi(CategoryModel data) async {
    try {
      final dbItem = db.categoryModels
          .filter()
          .categoryNameEqualTo(data.categoryName)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem == null) {
        db.writeTxnSync(() => db.categoryModels.putSync(data));
        return const Tuple2(true, 'Category Created Successfully!');
      } else {
        throw IsarError('Category Already Exists!');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<Tuple2<bool, String>> updateCategoryApi(CategoryModel data) async {
    try {
      CategoryModel? dbItem = db.categoryModels
          .filter()
          .categoryidEqualTo(data.categoryid)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        if (data.categoryName != dbItem.categoryName) {
          final existingCategory = db.categoryModels
              .filter()
              .categoryNameEqualTo(data.categoryName)
              .and()
              .isDeletedEqualTo(false)
              .findFirstSync();
          if (existingCategory != null) {
            throw IsarError('Category Already Exists!');
          }
        }
        dbItem.categoryName = data.categoryName;
        dbItem.isActive = data.isActive;

        db.writeTxnSync(() => db.categoryModels.putSync(dbItem));
        return const Tuple2(true, 'Category Updated!');
      } else {
        throw IsarError('Category Does Not Exists!');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return Tuple2(false, error.message);
    }
  }

  Future<bool> deleteCategoryApi(String? id) async {
    try {
      final dbItem = db.categoryModels
          .filter()
          .categoryidEqualTo(id)
          .and()
          .isDeletedEqualTo(false)
          .findFirstSync();
      if (dbItem != null) {
        dbItem.isDeleted = true;
        db.writeTxnSync(() => db.categoryModels.putSync(dbItem));
        return true;
      } else {
        throw IsarError('Item Does Not Exists!');
      }
    } on IsarError catch (error) {
      debugPrint(error.message);
      return false;
    }
  }
}
