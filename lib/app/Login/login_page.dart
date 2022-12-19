// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var errorMessage = '';
  var isCreatingAccount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(isCreatingAccount == true
                  ? 'Zarejestruj sie '
                  : 'Zaloguj sie'),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: widget.emailController,
                decoration: InputDecoration(hintText: 'E-mail'),
              ),
              TextField(
                controller: widget.passwordController,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Hasło'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(errorMessage),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (isCreatingAccount == true) {
                    try {
                      await FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text,
                      );
                    } catch (error) {
                      setState(() {
                        errorMessage = error.toString();
                      });
                    }
                  } else {
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: widget.emailController.text,
                        password: widget.passwordController.text,
                      );
                    } catch (error) {
                      setState(() {
                        errorMessage = error.toString();
                      });
                    }
                  }

                  await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: widget.emailController.text,
                    password: widget.passwordController.text,
                  );
                },
                child: Text(isCreatingAccount == true
                    ? 'Zarejestruj sie'
                    : 'Zaloguj sie'),
              ),
              SizedBox(
                height: 20,
              ),
              if (isCreatingAccount == false) ...[
                TextButton(
                  onPressed: () {
                    setState(() {
                      isCreatingAccount = true;
                    });
                  },
                  child: Text('Utworz konto'),
                ),
              ],
              if (isCreatingAccount == true) ...[
                TextButton(
                  onPressed: () {
                    setState(() {
                      isCreatingAccount = false;
                    });
                  },
                  child: Text('Masz juz konto?'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
