import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/screens/login/login_bloc.dart';
import 'package:zimbapos/screens/login/login_state.dart';

import '../../routers/utils/extensions/screen_name.dart';
import '../../widgets/auth_widgets/auth_textfield.dart';

class LoginScreen extends StatelessWidget {
  final LoginBloc loginBloc = LoginBloc();

  LoginScreen({super.key});

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  // final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: BlocProvider(
        create: (context) => loginBloc,
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccessState) {
              // Navigate to another screen upon successful login
              // Navigator.pushReplacementNamed(context, '/main');
            }
          },
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state is LoginLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is LoginErrorState) {
                return Center(child: Text('Error: ${state.error}'));
              } else {
                return _buildLoginForm(context, screenSize);
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context, Size screenSize) {
    return Form(
      key: key,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > constraints.maxHeight) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: constraints.maxHeight * .03),
                  AuthTextField(
                    hintText: 'Enter User-Id',
                    controller: phoneController,
                  ),
                  SizedBox(height: constraints.maxHeight * .03),
                  AuthTextField(
                    hintText: 'Enter Password',
                    controller: passController,
                    maxlines: 1,
                    visibityEye: true,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Dispatch the LoginButtonPressed event with the entered credentials
                      // loginBloc.add(LoginButtonPressed(
                      //   username: 'dummy_username',
                      //   password: 'dummy_password',
                      // ));
                      context.pushReplacement(AppScreen.homeScreen.path);
                      // GoRouter.of(context).go(AppScreen.homeScreen.path);
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenSize.width * .04,
                  vertical: screenSize.height * .01),
              child: Column(
                children: [
                  Container(
                    height: constraints.maxHeight * .35,
                    decoration: BoxDecoration(color: Colors.purple.shade800),
                  ),
                  SizedBox(height: constraints.maxHeight * .05),
                  Text('Log In', style: TextStyle()),
                  SizedBox(height: constraints.maxHeight * .03),
                  AuthTextField(
                    hintText: 'Enter User-Id',
                    controller: phoneController,
                  ),
                  SizedBox(height: constraints.maxHeight * .03),
                  AuthTextField(
                    hintText: 'Enter Password',
                    controller: passController,
                    maxlines: 1,
                    visibityEye: true,
                  ),
                  SizedBox(height: screenSize.height * 0.03),
                  ElevatedButton(
                    onPressed: () {
                      // Dispatch the LoginButtonPressed event with the entered credentials
                      // loginBloc.add(LoginButtonPressed(
                      //   username: 'dummy_username',
                      //   password: 'dummy_password',
                      // ));
                      context.pushReplacement(AppScreen.homeScreen.path);
                      // GoRouter.of(context).go(AppScreen.homeScreen.path);
                    },
                    child: const Text('Login'),
                  ),
                  // AuthButton(
                  //   child: const Text('Login'),
                  //   onPressed: () => _login(),
                  // )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
