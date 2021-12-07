import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/bloc/login_state.dart';
import 'package:test_flutter/modules/register_module/logic/bloc/register_state.dart';

class SuccessState extends LoginState{
  User? user;
  SuccessState({required this.user});
}