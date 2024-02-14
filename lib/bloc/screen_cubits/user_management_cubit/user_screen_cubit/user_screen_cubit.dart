import 'package:flutter_bloc/flutter_bloc.dart';
part 'user_screen_state.dart';

class UserScreenCubit extends Cubit<ScreenState> {
  UserScreenCubit() : super(ScreenState.initial) {
    init();
  }

  init() async {
    emit(ScreenState.loading);
  }
}
