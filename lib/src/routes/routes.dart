import 'package:flutter/material.dart';

//Paginas
import 'package:appcomida/src/pages/welcome_page.dart';
import 'package:appcomida/src/pages/login_page.dart';
import 'package:appcomida/src/pages/forgot_password.dart';
import 'package:appcomida/src/pages/sign_up_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => WelcomePage(),
  'login': (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage()
};
