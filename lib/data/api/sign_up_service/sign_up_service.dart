import "dart:convert";
import "dart:developer";

import "package:http/http.dart" as http;
import "package:http/http.dart";
import "package:travel_media/core/endpoints/endpoints.dart";
import "package:travel_media/data/models/sign_up_model.dart";

class SignUpService {
  Future<Response?> userSignUp(SignUpModel model) async {
    final url = Uri.parse("${Endpoints().baseUrl}${Endpoints().signUp}");
    final body = {
      "confirmPassword": model.confirmPassword,
      "email": model.email,
      "password": model.password,
      "phone": model.phoneNumber,
      "username": model.userName,
    };
    try{
      final response =await http.post(url,body: jsonEncode(body));
      log(response.statusCode.toString());
      return response;

    }catch(e){
       log(e.toString());
      return null;
    }
  }
}
