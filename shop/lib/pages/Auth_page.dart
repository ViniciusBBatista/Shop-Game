import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shop/components/Auth_form.dart';
import 'package:shop/main.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(215, 117, 255, 05),
                Color.fromARGB(255, 117, 255, 253),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/bugs.png'),
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.indigoAccent,
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 30,
                              color: Colors.black,
                              offset: Offset(0, 8)),
                        ],
                      ),
                      child: const Text(
                        "Game Shop",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    AuthForm(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
