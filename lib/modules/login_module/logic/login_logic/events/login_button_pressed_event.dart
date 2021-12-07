import 'package:test_flutter/modules/login_module/logic/login_logic/bloc/login_event.dart';
import 'package:test_flutter/modules/register_module/logic/bloc/register_event.dart';

class LoginButtonPressedEvent extends LoginEvent{
  String email , password;
  LoginButtonPressedEvent({required this.email , required this.password});

}