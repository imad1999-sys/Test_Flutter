import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_flutter/modules/register_module/logic/bloc/register_state.dart';

class SuccessState extends RegisterState{
  User? user;
  SuccessState({required this.user});
}