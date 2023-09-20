import 'package:legal_ease/pages/login.dart';
import 'package:legal_ease/pages/main_page.dart';
import 'package:legal_ease/pages/signup_client.dart';

class Approutes {
  static final pages = {
    '/login': (context) => Login(),
    '/home': (context) => MainPage(),
    '/signup': (context) => SignupClient(),
  };
  static const login = '/login';
  static const home = '/home';
  static const signup = '/signup';
}
