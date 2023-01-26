// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/App/cubit/root_cubit.dart';
import 'package:food/repositories/login_repository.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RootCubit(LoginRepository()),
      child: BlocBuilder<RootCubit, RootState>(
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromARGB(255, 234, 237, 240),
                  Color.fromARGB(255, 176, 208, 221),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 4),
                        child: TextField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xffD9D9D9),
                            prefixIcon: Icon(Icons.mail, color: Colors.black),
                            hintText: 'E-mail',
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 4),
                        child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              filled: true,
                              fillColor: Color(0xffD9D9D9),
                              prefixIcon: Icon(Icons.key, color: Colors.black),
                              hintText: 'Hasło',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            cursorColor: Colors.black),
                      ),
                      if (state.isCreatingAccount == true) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 4),
                          child: TextField(
                              controller: confirmPasswordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xffD9D9D9),
                                prefixIcon:
                                    Icon(Icons.check, color: Colors.black),
                                hintText: 'Powtórz hasło',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              cursorColor: Colors.black),
                        ),
                      ],
                      if (state.isCreatingAccount == true) ...[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            onPressed: () {
                              context.read<RootCubit>().notCreatingAccount();
                            },
                            child: Text(
                              'Masz już konto? Zaloguj się',
                            ),
                          ),
                        ),
                      ],
                      if (state.isCreatingAccount == false) ...[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            onPressed: () {
                              context
                                  .read<RootCubit>()
                                  .creatingAccount(email: '', password: '');
                            },
                            child: Text(
                              'Nie masz konta? Zarejestruj się',
                            ),
                          ),
                        ),
                      ],
                      TextButton(
                        onPressed: () async {
                          if (state.isCreatingAccount == true) {
                            context.read<RootCubit>().register(
                                  email: emailController.text,
                                  password: passwordController.text,
                                );
                          } else {
                            context.read<RootCubit>().signIn(
                                email: emailController.text,
                                password: passwordController.text);
                          }
                        },
                        child: Text(
                          state.isCreatingAccount == true
                              ? 'Zarejestruj się'
                              : 'Zaloguj się',
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          state.errorMessage,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
