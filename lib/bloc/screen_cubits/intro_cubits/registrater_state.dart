import 'package:zimbapos/models/user_models/subscriber_model.dart';

abstract class RegisterSubscriberState {}

class InitialRegistration extends RegisterSubscriberState {}

class LoadingRegistration extends RegisterSubscriberState {}

class Registration extends RegisterSubscriberState {}

class CompleteRegistration extends RegisterSubscriberState {
  CompleteRegistration();
}

class ErrorRegistration extends RegisterSubscriberState {
  String message;
  ErrorRegistration({required this.message});
}
