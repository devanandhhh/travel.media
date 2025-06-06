import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:travel_media/data/api/log_in_service/login_service.dart';
import 'package:travel_media/data/secure_storage/secure_storage.dart';
import 'package:travel_media/data/shared_pref/shared_pref.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<UserLoginSumbittedEvent>(onUserLoginSubmitted);
  }
  LoginService service = LoginService();
  SecureStorageService secureStorage =SecureStorageService();


  Future<void> onUserLoginSubmitted(
      UserLoginSumbittedEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoadingState());
    try {
      Response response =
          await service.userLogin(email: event.email, password: event.password);
      //log("response =>${response!.body}");
      if (response.statusCode == 200) {
        final String accessToken = jsonDecode(response.body)["accessToken"];
        final String refreshToken = jsonDecode(response.body)["refreshToken"];

        log("$refreshToken $accessToken");
        await secureStorage.writeSecureStorage("AccessToken", accessToken);
        await secureStorage.writeSecureStorage("RefreshToken", refreshToken);
        await SharedPreference.saveboolValue(true);

        emit(LoginSuccessState(jsonDecode(response.body)["message"]));
      }
      emit(LoginFaliureState(jsonDecode(response.body)["message"]));
    } catch (e) {
      log(e.toString());
      emit(LoginFaliureState(e.toString()));
    }
  }
}
