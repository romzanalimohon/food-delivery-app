import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/models/signup_body_model.dart';
import 'package:food_delivery_app/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo{
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences
  });
  
  Future<Response> registration(SignUpBody signUpBody) async{
    return await apiClient.postData(AppConstants.REGISTRATION_URI, signUpBody.toJson());
  }

  Future<Response> login(String email, String password) async{
    return await apiClient.postData(AppConstants.LOGIN_URI,
        {"email":email, "password":password});
  }

  saveUserToken(String token) async {
    apiClient.token = token;
    apiClient.updateHeader(token);
    return await sharedPreferences.setString(AppConstants.TOKEN, token);
  }
}