
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/bloc/login_state.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/events/login_button_pressed_event.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/states/failed_state.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/states/initial_state.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/states/loading_state.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/states/success_state.dart';
import 'package:test_flutter/modules/login_module/services/user_service.dart';

import 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  UserService userService;

  LoginBloc({required this.userService}) : super(InitialState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressedEvent) {
      yield LoadingState();
      try {
        var register = await userService.loginWithEmailAndPassword(
            userEmail: event.email, userPassword: event.password);
        yield SuccessState(user: register);
      } catch (e) {
        yield FailedState(message: e.toString());
      }
    }
  }
}
