import 'dart:developer';

import 'package:http/http.dart'as http;
import 'package:http/http.dart';
import 'package:travel_media/core/endpoints/endpoints.dart';

class LoginService {
  Future<Response>userLogin({required String email,required String password})async{
    final url =Uri.parse("${Endpoints().baseUrl}${Endpoints().login}");
    final body ={
      "email":email,
      "password":password
    };
    try{
      final response =await http.post(url,body: body);
      log(response.body);
     log(response.statusCode.toString());
     if (response.statusCode == 200) {
        return response;
      } else {
        return response;
        //throw 'Login failed ';
      }

    }catch(e){
       
      log("Error: $e");
      throw'Login request failed: $e';
    }
    
  }
}