import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/modules/home_module/screen/home_screen.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/bloc/auth_bloc.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/bloc/auth_state.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/states/authenticate_state.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/states/un_authenticate_state.dart';
import 'package:test_flutter/modules/login_module/screen/login_screen.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc , AuthState>(
      builder: (context , state){
        if(state is UnAuthenticateState){
          return LoginScreen();
        }
        else if(state is AuthenticateState){
          return HomeScreen();
        }
        return Container();
      },
    );
  }
}
