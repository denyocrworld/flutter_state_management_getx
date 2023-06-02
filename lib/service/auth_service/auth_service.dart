import 'package:dio/dio.dart';

class AuthService {
  login() async {
    await Dio().post(
      "https://capekngoding.com/demo/api/auth/action/login",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "email": "admin@demo.com",
        "password": "123456",
      },
    );
  }
}
