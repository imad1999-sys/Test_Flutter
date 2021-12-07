import 'package:test_flutter/modules/register_module/logic/bloc/register_state.dart';

class FailedState extends RegisterState{
  String message;
  FailedState({required this.message});
}