import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/bloc/auth_state.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/events/app_loaded_event.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/states/authenticate_state.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/states/initial_state.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/states/un_authenticate_state.dart';
import 'package:test_flutter/modules/login_module/services/user_service.dart';
import 'auth_event.dart';


class AuthBloc extends Bloc<AuthEvent , AuthState>{
  UserService userService;

  AuthBloc({required this.userService}) : super(InitialState());


  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async*{
    if(event is AppLoadedEvent){
      try{
        var isSignedIn = await userService.checkIfUserIsLoggedIn();
        if(isSignedIn){
          var user = await userService.getCurrentUser();
          yield AuthenticateState(user: user);
        }
        else{
          yield UnAuthenticateState();
        }
      }catch(_){
        yield UnAuthenticateState();
      }
    }
  }

}