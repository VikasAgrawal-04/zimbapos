import 'package:dartz/dartz.dart';
import 'package:zimbapos/global/error/failures.dart';
import 'package:zimbapos/models/global_models/area_model.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/models/global_models/tables_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/area/area_api_repo.dart';
import 'package:zimbapos/repository/api_repository/area/area_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/category/category_api_repo.dart';
import 'package:zimbapos/repository/api_repository/category/category_api_repo_impl.dart';
import 'package:zimbapos/repository/api_repository/table/table_api_repo.dart';
import 'package:zimbapos/repository/api_repository/table/table_api_repo_impl.dart';

class ApiRepoImpl implements ApiRepo {
  final AreaApiRepo _areaApiRepo;
  final TableApiRepo _tableApiRepo;
  final CategoryApiRepo _categoryApiRepo;
  ApiRepoImpl()
      : _areaApiRepo = AreaApiRepoImpl(),
        _tableApiRepo = TableApiRepoImpl(),
        _categoryApiRepo = CategoryApiRepoImpl();

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
}
