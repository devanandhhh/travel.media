part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class UserLoginSumbittedEvent extends LoginEvent{
  final String email ;
  final String password;
  UserLoginSumbittedEvent({required this.email,required this.password});
}
class UserForgotPasswordEvent extends LoginEvent{

}
class UserSignupEvent extends LoginEvent{
  
}
