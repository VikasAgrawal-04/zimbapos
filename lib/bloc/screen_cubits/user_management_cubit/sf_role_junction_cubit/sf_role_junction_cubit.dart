import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:zimbapos/bloc/screen_cubits/user_management_cubit/sf_role_junction_cubit/sf_role_junction_state.dart';
import 'package:zimbapos/models/global_models/screen_function_mapping_model.dart';

class SfRoleJunctionCubit extends Cubit<SfRoleJunctionState> {
  SfRoleJunctionCubit() : super(SfRoleJunctionState.initial());

  //API Calls

  //Functions
  void onRoleChange(val) {
    emit(state.copyWith(roleId: val));
  }

  void fillValues(List<SFMappingModel> sfList) {
    final ids = sfList.map((e) => e.scrnFnId.toString()).toList();
    final canView = sfList.map((e) => false).toList();
    final canEdit = sfList.map((e) => false).toList();
    emit(state.copyWith(functionId: ids, canEdit: canEdit, canView: canView));
  }

  void onCanViewChange(bool val, int index) {
    List<bool> canView = List.from(state.canView ?? []);
    canView[index] = val;
    emit(state.copyWith(canView: canView));
  }

  void onCanEditChange(bool val, int index) {
    List<bool> canEdit = List.from(state.canEdit ?? []);
    canEdit[index] = val;
    emit(state.copyWith(canEdit: canEdit));
  }

  void onSubmit() {
    if (state.roleId == null) {
      EasyLoading.showError('Please Choose A Role');
    }
  }
}
