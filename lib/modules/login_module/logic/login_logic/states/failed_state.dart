import 'package:test_flutter/modules/login_module/logic/login_logic/bloc/login_event.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/bloc/login_state.dart';
import 'package:test_flutter/modules/register_module/logic/bloc/register_state.dart';

class FailedState extends LoginState{
  String message;
  FailedState({required this.message});
}