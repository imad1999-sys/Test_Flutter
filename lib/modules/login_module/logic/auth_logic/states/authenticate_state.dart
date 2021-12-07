import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/bloc/auth_state.dart';

class AuthenticateState extends AuthState{
  User? user;
  AuthenticateState({required this.user});
}