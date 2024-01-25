import 'package:zimbapos/repository/api_repository/area/area_api_repo.dart';
import 'package:zimbapos/repository/api_repository/category/category_api_repo.dart';
import 'package:zimbapos/repository/api_repository/table/table_api_repo.dart';
import 'package:zimbapos/repository/api_repository/worker/worker_api_repo_impl.dart';

abstract class ApiRepo
    implements AreaApiRepo, TableApiRepo, CategoryApiRepo, WorkerApiRepo {}
