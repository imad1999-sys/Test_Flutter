import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/modules/register_module/logic/events/signup_button_pressed_event.dart';
import 'package:test_flutter/modules/register_module/logic/states/failed_state.dart';
import 'package:test_flutter/modules/register_module/logic/states/initial_state.dart';
import 'package:test_flutter/modules/login_module/services/user_service.dart';
import 'package:test_flutter/modules/register_module/logic/bloc/register_event.dart';
import 'package:test_flutter/modules/register_module/logic/bloc/register_state.dart';
import 'package:test_flutter/modules/register_module/logic/states/loading_state.dart';
import 'package:test_flutter/modules/register_module/logic/states/success_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  UserService userService;

  RegisterBloc({required this.userService}) : super(InitialState());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is SignupButtonPressedEvent) {
      yield LoadingState();
      try {
        var register = await userService.registerWithEmailAndPassword(
            userEmail: event.email, userPassword: event.password);
        yield SuccessState(user: register);
      } catch (e) {
        yield FailedState(message: e.toString());
      }
    }
  }
}
