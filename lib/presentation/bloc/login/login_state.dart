part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoadingState extends LoginState{}

class LoginSuccessState extends LoginState{
  final String message;
  LoginSuccessState(this.message);
}

class LoginFaliureState extends LoginState{
  final String errror;
  LoginFaliureState(this.errror);
}

class UserForgotPasswordState extends LoginState{}

