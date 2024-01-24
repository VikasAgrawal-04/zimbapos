import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/bloc/screen_cubits/item_selection_cubits/item_selection_state.dart';
import 'package:zimbapos/models/global_models/category_model.dart';
import 'package:zimbapos/repository/api_repository/api_repo.dart';
import 'package:zimbapos/repository/api_repository/api_repo_impl.dart';

class ItemSelectionCubit extends Cubit<ItemSelectionState> {
  final ApiRepo _repo = ApiRepoImpl();
  late List<CategoryModel> categories;
  ItemSelectionCubit() : super(const ItemSelectionState(categories: [])) {
    init();
  }

  @override
  Future<void> close() {
    categories.clear();
    return super.close();
  }

  Future<void> init() async {
    await Future.wait([getCategories()]);
  }

  Future<void> getCategories() async {
    try {
      final data = await _repo.fetchCategories();
      data.fold((failure) {
        debugPrint(failure.toString());
        categories = <CategoryModel>[];
      }, (success) {
        categories = success;
        emit(state.copyWith(categories: categories));
      });
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
    }
  }
}
