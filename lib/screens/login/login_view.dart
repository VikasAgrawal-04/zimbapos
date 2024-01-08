import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:zimbapos/screens/login/login_bloc.dart';
import 'package:zimbapos/screens/login/login_state.dart';

import '../../routers/utils/extensions/screen_name.dart';

class LoginScreen extends StatelessWidget {
  final LoginBloc loginBloc = LoginBloc();

  LoginScreen({super.key});

  final TextEditingController passController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              Navigator.pushReplacementNamed(context, '/main');
            }
          },
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              if (state is LoginLoadingState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is LoginErrorState) {
                return Center(child: Text('Error: ${state.error}'));
              } else {
                return _buildLoginForm(context);
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const CustomTextFieldNew(
          //   isRequired: true,
          //   keyboardType: TextInputType.text,
          //   isNumber: false,
          //   textInputAction: TextInputAction.done,
          // ),
          const TextField(
            decoration: InputDecoration(labelText: 'Username'),
          ),
          const SizedBox(height: 16),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          // AuthTextField(hintText: "Password", controller: passController),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Dispatch the LoginButtonPressed event with the entered credentials
              // loginBloc.add(LoginButtonPressed(
              //   username: 'dummy_username',
              //   password: 'dummy_password',
              // ));
              GoRouter.of(context).go(AppScreen.homeScreen.path);
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
