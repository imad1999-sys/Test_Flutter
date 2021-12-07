import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/components/base_animation_route_component.dart';
import 'package:test_flutter/components/base_button_component.dart';
import 'package:test_flutter/components/base_icon_component.dart';
import 'package:test_flutter/components/base_title_component.dart';
import 'package:test_flutter/modules/home_module/screen/home_screen.dart';
import 'package:test_flutter/modules/login_module/components/login_form.dart';
import 'package:test_flutter/modules/login_module/components/login_image.dart';
import 'package:test_flutter/modules/login_module/components/login_register_page_link.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/bloc/login_bloc.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/bloc/login_state.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/events/login_button_pressed_event.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/states/failed_state.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/states/loading_state.dart';
import 'package:test_flutter/modules/login_module/logic/login_logic/states/success_state.dart';

/// this is the final component of login screen
class LoginScreen extends StatelessWidget {
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;
  late LoginBloc loginBloc;

  @override
  Widget build(BuildContext context) {
    loginBloc = BlocProvider.of<LoginBloc>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BlocListener<LoginBloc, LoginState>(
              listener: (context, state) {
                if (state is SuccessState) {
                  Navigator.of(context)
                      .push(BaseAnimationRouteComponent(page: HomeScreen()));
                }
              },
              child: BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is LoadingState) {
                    return CircularProgressIndicator();
                  } else if (state is FailedState) {
                    return Text(state.message);
                  } else if (state is SuccessState) {
                    usernameController.text = '';
                    passwordController.text = '';
                    return Container();
                  }
                  return Container();
                },
              ),
            ),

            // title of login screen
            const BaseTitleComponent(
              text: 'Welcome to login screen',
            ),

            const SizedBox(
              height: 25,
            ),

            // image of login screen
            LoginImage(),

            const SizedBox(
              height: 10,
            ),

            //login form which contains username and password
            LoginForm(
              usernameController: usernameController,
              passwordController: passwordController,
            ),

            const SizedBox(
              height: 10,
            ),

            //login button which log in into the application
            BaseButtonComponent(
              btnText: "Login",
              btnFunc: () {
                loginBloc.add(LoginButtonPressedEvent(
                    email: usernameController.text,
                    password: passwordController.text));
              },
              btnIcon: BaseIconComponent(iconImage: "assets/icons/login.svg"),
            ),

            const SizedBox(
              height: 10,
            ),

            // register page link
            LoginRegisterPageLink(),
          ],
        ),
      ),
    );
  }
}
