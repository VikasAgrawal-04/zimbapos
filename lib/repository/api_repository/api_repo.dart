import 'package:zimbapos/repository/api_repository/area/area_api_repo.dart';
import 'package:zimbapos/repository/api_repository/category/category_api_repo.dart';
import 'package:zimbapos/repository/api_repository/item_group/item_group_api_repo.dart';
import 'package:zimbapos/repository/api_repository/items/item_api_repo.dart';
import 'package:zimbapos/repository/api_repository/main_group/main_group_api_repo.dart';
import 'package:zimbapos/repository/api_repository/table/table_api_repo.dart';

abstract class ApiRepo
    implements
        AreaApiRepo,
        TableApiRepo,
        CategoryApiRepo,
        MainGroupApiRepo,
        ItemGroupApiRepo,
        ItemApiRepo {}
