import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zimbapos/screens/login/login_event.dart';
import 'package:zimbapos/screens/login/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState());

  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      // Perform login logic here (e.g., API call, validation)
      yield LoginLoadingState();

      try {
        // Simulate login success
        await Future.delayed(const Duration(seconds: 2));
        yield LoginSuccessState();
      } catch (error) {
        yield LoginErrorState(error.toString());
      }
    }
  }
}
