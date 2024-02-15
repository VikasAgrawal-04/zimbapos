import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'edit_user_role_state.dart';

class EditUserRoleCubit extends Cubit<EditUserRoleState> {
  EditUserRoleCubit() : super(EditUserRoleInitial());
}
