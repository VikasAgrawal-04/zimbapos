import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/customer_category_model.dart';
import 'package:zimbapos/models/global_models/customer_model.dart';
import 'package:zimbapos/models/global_models/item_group_model.dart';
import 'package:zimbapos/models/global_models/items_model.dart';
import 'package:zimbapos/models/global_models/main_group_model.dart';
import 'package:zimbapos/models/global_models/pay_in_model.dart';
import 'package:zimbapos/models/global_models/pay_mod_master_model.dart';
import 'package:zimbapos/models/global_models/pay_out_model.dart';
import 'package:zimbapos/models/global_models/rate_sets_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/models/global_models/tax_model.dart';
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
import 'package:zimbapos/repository/api_repository/customer/customer_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/customer_category/customer_category_api_repo.dart';
import 'package:zimbapos/repository/api_repository/customer_category/customer_category_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/item_group/item_group_api_repo.dart';
import 'package:zimbapos/repository/api_repository/item_group/item_group_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/items/item_api_repo.dart';
import 'package:zimbapos/repository/api_repository/items/item_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/main_group/main_group_api_repo.dart';
import 'package:zimbapos/repository/api_repository/main_group/main_group_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/payin/pay_in_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/rateset/rateset_api_repo.dart';
import 'package:zimbapos/repository/api_repository/shift/shift_api_repo.dart';
import 'package:zimbapos/repository/api_repository/shift/shift_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/table/table_api_repo.dart';
import 'package:zimbapos/repository/api_repository/table/table_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/tax/tax_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/worker/worker_api_repo.dart';
import 'package:zimbapos/repository/api_repository/worker/worker_api_repo_impl.dart';

import 'customer/customer_api_repo.dart';
import 'pay_mod_master/pay_mod_master_api_repo_impl.dart';
import 'pay_mod_master/pay_mod_master_repo.dart';
import 'payin/pay_in_api_repo.dart';
import 'payout/pay_out_api_repo.dart';
import 'payout/pay_out_api_repo_impl.dart';
import 'rateset/rateset_api_repo_impl.dart';
import 'tax/tax_api_repo.dart';

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
  final CustomerApiRepo _customerApiRepo;
  final TaxApiRepo _taxApiRepo;
  final RateSetApiRepo _rateSetApiRepo;
  final ShiftApiRepo _shiftApiRepo;
  final PayInApiRepo _payInApiRepo;
  final PayOutApiRepo _payOutApiRepo;
  final PayModMasterApiRepo _payModMasterApiRepo;

  ApiRepoImpl()
      : _areaApiRepo = AreaApiRepoImpl(),
        _tableApiRepo = TableApiRepoImpl(),
        _categoryApiRepo = CategoryApiRepoImpl(),
        _workerApiRepo = WorkerApiRepoImpl(),
        _mainGroupApiRepo = MainGroupApiRepoImpl(),
        _itemGroupApiRepo = ItemGroupApiRepoImpl(),
        _itemApiRepo = ItemApiRepoImpl(),
        _billApiRepo = BillApiRepoImpl(),
        _customerCategoryApiRepo = CustomerCategoryApiRepoImpl(),
        _taxApiRepo = TaxApiRepoImpl(),
        _rateSetApiRepo = RateSetApiRepoImpl(),
        _customerApiRepo = CustomerApiRepoImpl(),
        _shiftApiRepo = ShiftApiRepoImpl(),
        _payInApiRepo = PayInApiRepoImpl(),
        _payModMasterApiRepo = PayModMasterApiRepoImpl(),
        _payOutApiRepo = PayOutApiRepoImpl();

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

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateCustomerCategory(
      CustomerCategoryModel item) {
    return _customerCategoryApiRepo.updateCustomerCategory(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteCustomerCategory(
      String customerCategoryId) {
    return _customerCategoryApiRepo.deleteCustomerCategory(customerCategoryId);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createCustomer(
      CustomerModel item) {
    return _customerApiRepo.createCustomer(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteCustomer(
      String customerId) {
    return _customerApiRepo.deleteCustomer(customerId);
  }

  @override
  Future<Either<Failure, List<CustomerModel>>> getCustomerList() {
    return _customerApiRepo.getCustomerList();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateCustomer(
      CustomerModel item) {
    return _customerApiRepo.updateCustomer(item);
  }

  @override
  Future<Either<Failure, TempBillRequestModel>> getTempBill(String tableId) {
    return _billApiRepo.getTempBill(tableId);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createMainGroup(
      MainGroupModel item) {
    return _mainGroupApiRepo.createMainGroup(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteMainGroup(
      String mainGroupId) {
    return _mainGroupApiRepo.deleteMainGroup(mainGroupId);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateMainGroup(
      MainGroupModel item) {
    return _mainGroupApiRepo.updateMainGroup(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createItemGroup(
      ItemGroupModel item) {
    return _itemGroupApiRepo.createItemGroup(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteItemGroup(
      String itemGroupId) {
    return _itemGroupApiRepo.deleteItemGroup(itemGroupId);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateItemGroup(
      ItemGroupModel item) {
    return _itemGroupApiRepo.updateItemGroup(item);
  }

  @override
  Future<Either<Failure, List<ItemGroupModel>>> getItemGroupList() {
    return _itemGroupApiRepo.getItemGroupList();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createItem(ItemsModel item) {
    return _itemApiRepo.createItem(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteItem(String itemId) {
    return _itemApiRepo.deleteItem(itemId);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateItem(ItemsModel item) {
    return _itemApiRepo.updateItem(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createArea(AreasModel data) {
    return _areaApiRepo.createArea(data);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteArea(String areaId) {
    return _areaApiRepo.deleteArea(areaId);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateArea(AreasModel data) {
    return _areaApiRepo.updateArea(data);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createTable(TableModel item) {
    return _tableApiRepo.createTable(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteTable(String tableId) {
    return _tableApiRepo.deleteTable(tableId);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateTable(TableModel item) {
    return _tableApiRepo.updateTable(item);
  }

  @override
  Future<Either<Failure, List<TableModel>>> fetchTableList() {
    return _tableApiRepo.fetchTableList();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteKotItem(
      String tableId, String itemId) {
    return _billApiRepo.deleteKotItem(tableId, itemId);
  }

  @override
  Future<Either<Failure, List<WorkersModel>>> getWaiters() {
    return _workerApiRepo.getWaiters();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createTax(TaxModel item) {
    return _taxApiRepo.createTax(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteTax(String taxId) {
    return _taxApiRepo.deleteTax(taxId);
  }

  @override
  Future<Either<Failure, List<TaxModel>>> fetchTaxList() {
    return _taxApiRepo.fetchTaxList();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateTax(TaxModel item) {
    return _taxApiRepo.updateTax(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createRateSet(
      RateSetsModel item) {
    return _rateSetApiRepo.createRateSet(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deleteRateSet(
      String rateSetId) {
    return _rateSetApiRepo.deleteRateSet(rateSetId);
  }

  @override
  Future<Either<Failure, List<RateSetsModel>>> fetchRateSetList() {
    return _rateSetApiRepo.fetchRateSetList();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updateRateSet(
      RateSetsModel item) {
    return _rateSetApiRepo.updateRateSet(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> endShift() {
    return _shiftApiRepo.endShift();
  }

  @override
  Future<Either<Failure, int>> getShiftId() {
    return _shiftApiRepo.getShiftId();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> startShift() {
    return _shiftApiRepo.startShift();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createPayIn(PayInModel item) {
    return _payInApiRepo.createPayIn(item);
  }

  @override
  Future<Either<Failure, List<PayInModel>>> fetchPayInList() {
    return _payInApiRepo.fetchPayInList();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createPayOut(PayOutModel item) {
    return _payOutApiRepo.createPayOut(item);
  }

  @override
  Future<Either<Failure, List<PayOutModel>>> fetchPayOutList() {
    return _payOutApiRepo.fetchPayOutList();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createFinalBill(
      String tableId) {
    return _billApiRepo.createFinalBill(tableId);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> createPayModMaster(
      PayModMasterModel item) {
    return _payModMasterApiRepo.createPayModMaster(item);
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> deletePayModMaster(
      String payCode) {
    return _payModMasterApiRepo.deletePayModMaster(payCode);
  }

  @override
  Future<Either<Failure, List<PayModMasterModel>>> fetchPayModMasterList() {
    return _payModMasterApiRepo.fetchPayModMasterList();
  }

  @override
  Future<Either<Failure, Map<String, dynamic>>> updatePayModMaster(
      PayModMasterModel item) {
    return _payModMasterApiRepo.updatePayModMaster(item);
  }
}
