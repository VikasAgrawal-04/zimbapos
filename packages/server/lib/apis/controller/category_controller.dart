import 'package:server/apis/helper/api_helper.dart';
import 'package:shelf/shelf.dart';
import 'package:zimbapos/repository/isar_service.dart';

class CategoryController {
  IsarService dbCubit;
  CategoryController(this.dbCubit);

  Future<Response> fetchAllCategory(Request request) async {
    try {
      final categories = await dbCubit.categoryRepository.getAllCategory();
      return okResponse(categories);
    } catch (e) {
      return invalidResponse();
    }
  }
}
