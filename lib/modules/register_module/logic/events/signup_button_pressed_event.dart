import 'package:test_flutter/modules/register_module/logic/bloc/register_event.dart';

class SignupButtonPressedEvent extends RegisterEvent{
  String email , password;
  SignupButtonPressedEvent({required this.email , required this.password});

}