import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/components/base_animation_route_component.dart';
import 'package:test_flutter/components/base_button_component.dart';
import 'package:test_flutter/components/base_icon_component.dart';
import 'package:test_flutter/components/base_title_component.dart';
import 'package:test_flutter/modules/home_module/screen/home_screen.dart';
import 'package:test_flutter/modules/register_module/components/register_form.dart';
import 'package:test_flutter/modules/register_module/components/register_image.dart';
import 'package:test_flutter/modules/register_module/logic/bloc/register_bloc.dart';
import 'package:test_flutter/modules/register_module/logic/bloc/register_state.dart';
import 'package:test_flutter/modules/register_module/logic/events/signup_button_pressed_event.dart';
import 'package:test_flutter/modules/register_module/logic/states/failed_state.dart';
import 'package:test_flutter/modules/register_module/logic/states/loading_state.dart';
import 'package:test_flutter/modules/register_module/logic/states/success_state.dart';

/// this is the final component of register screen
class RegisterScreen extends StatelessWidget {
  late final TextEditingController usernameController;
  late final TextEditingController passwordController;
  late RegisterBloc registerBloc;

  @override
  Widget build(BuildContext context) {
    registerBloc = BlocProvider.of<RegisterBloc>(context);
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocListener<RegisterBloc, RegisterState>(
              listener: (context, state) {
                if (state is SuccessState) {
                  Navigator.of(context)
                      .push(BaseAnimationRouteComponent(page: HomeScreen()));
                }
              },
              child: BlocBuilder<RegisterBloc, RegisterState>(
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
            //title of register screen
            const BaseTitleComponent(
              text: 'Welcome to register screen',
            ),

            const SizedBox(
              height: 25,
            ),

            //image of register screen
            RegisterImage(),

            const SizedBox(
              height: 10,
            ),

            //register form which contains username text field and password text field and select options
            RegisterForm(
              usernameController: usernameController,
              passwordController: passwordController,
            ),

            const SizedBox(
              height: 10,
            ),

            //register button which do the functionality of the registration
            BaseButtonComponent(
              btnText: "Register",
              btnFunc: () {
                registerBloc.add(SignupButtonPressedEvent(
                    email: usernameController.text,
                    password: passwordController.text));
              },
              btnIcon:
                  BaseIconComponent(iconImage: "assets/icons/register.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
