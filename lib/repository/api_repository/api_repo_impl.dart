import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/models/global_models/workers_model.dart';
import 'package:zimbapos/models/request_models/temp_bill_request_model.dart';
import 'package:zimbapos/models/response_models/item_response_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/area/area_api_repo.dart';
import 'package:zimbapos/repository/api_repository/area/area_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/bills/bill_api_repo.dart';
import 'package:zimbapos/repository/api_repository/bills/bill_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/category/category_api_repo.dart';
import 'package:zimbapos/repository/api_repository/category/category_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/customer_category/customer_category_api_repo.dart';
import 'package:zimbapos/repository/api_repository/customer_category/customer_category_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/item_group/item_group_api_repo.dart';
import 'package:zimbapos/repository/api_repository/item_group/item_group_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/items/item_api_repo.dart';
import 'package:zimbapos/repository/api_repository/items/item_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/main_group/main_group_api_repo.dart';
import 'package:zimbapos/repository/api_repository/main_group/main_group_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/table/table_api_repo.dart';
import 'package:zimbapos/repository/api_repository/table/table_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/worker/worker_api_repo.dart';
import 'package:zimbapos/repository/api_repository/worker/worker_api_repo_impl.dart';

class ApiRepoImpl implements ApiRepo {
  final AreaApiRepo _areaApiRepo;
  final TableApiRepo _tableApiRepo;
  final CategoryApiRepo _categoryApiRepo;
  final MainGroupApiRepo _mainGroupApiRepo;
  final ItemGroupApiRepo _itemGroupApiRepo;
  final ItemApiRepo _itemApiRepo;
  final WorkerApiRepo _workerApiRepo;
  final BillApiRepo _billApiRepo;
  final CustomerCategoryApiRepo _customerCategoryApiRepo;

  ApiRepoImpl()
      : _areaApiRepo = AreaApiRepoImpl(),
        _tableApiRepo = TableApiRepoImpl(),
        _categoryApiRepo = CategoryApiRepoImpl(),
        _workerApiRepo = WorkerApiRepoImpl(),
        _mainGroupApiRepo = MainGroupApiRepoImpl(),
        _itemGroupApiRepo = ItemGroupApiRepoImpl(),
        _itemApiRepo = ItemApiRepoImpl(),
        _billApiRepo = BillApiRepoImpl(),
        _customerCategoryApiRepo = CustomerCategoryApiRepoImpl();

  @override
  Future<Either<Failure, List<AreasModel>>> getAreas() {
    return _areaApiRepo.getAreas();
  }

  @override
  Future<Either<Failure, List<TableModel>>> getTableByArea(String areaId) {
    return _tableApiRepo.getTableByArea(areaId);
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> fetchCategories() {
    return _categoryApiRepo.fetchCategories();
  }

  @override
  Future<Either<Failure, List<MainGroupModel>>> fetchMainGroup() {
    return _mainGroupApiRepo.fetchMainGroup();
  }

  @override
  Future<Either<Failure, List<ItemGroupModel>>> fetchItemGroup(String id) {
    return _itemGroupApiRepo.fetchItemGroup(id);
  }

  @override
  Future<Either<Failure, ItemApiResponseModel>> getAllItems() {
    return _itemApiRepo.getAllItems();
  }

  @override
  Future<Either<Failure, ItemApiResponseModel>> getAllItemsById(String id) {
    return _itemApiRepo.getAllItemsById(id);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createCategory(
      CategoryModel data) {
    return _categoryApiRepo.createCategory(data);
  }

  @override
  Future<Either<Failure, List<WorkersModel>>> getWorkers() {
    return _workerApiRepo.getWorkers();
  }

  @override
  Future<Either<Failure, String>> createWorker({required WorkersModel model}) {
    return _workerApiRepo.createWorker(model: model);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteCategory(
      String categoryId) {
    return _categoryApiRepo.deleteCategory(categoryId);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateCategory(
      CategoryModel data) {
    return _categoryApiRepo.updateCategory(data);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createKot(
      TempBillRequestModel data) {
    return _billApiRepo.createKot(data);
  }

  @override
  Future<Either<Failure, List<CustomerCategoryModel>>> getCustomerCategories() {
    return _customerCategoryApiRepo.getCustomerCategories();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createCustomerCategories(
      CustomerCategoryModel item) {
    return _customerCategoryApiRepo.createCustomerCategories(item);
  }
}
