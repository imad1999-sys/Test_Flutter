import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter/config/themes.dart';
import 'package:test_flutter/modules/login_module/logic/auth_logic/bloc/auth_bloc.dart';
import 'package:test_flutter/modules/login_module/screen/login_screen.dart';
import 'package:test_flutter/modules/main_screen.dart';
import 'package:test_flutter/modules/register_module/logic/bloc/register_bloc.dart';
import 'package:test_flutter/modules/register_module/screen/register_screen.dart';
import 'modules/login_module/services/user_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc(userService: UserService()), child: LoginScreen(),),
        BlocProvider(create: (context) => RegisterBloc(userService: UserService()), child: RegisterScreen(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData(),
        home: MainScreen(),
      ),
    );
  }
}

