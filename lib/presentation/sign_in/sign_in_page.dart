// /**
//  * Author: Damodar Lohani
//  * profile: https://github.com/lohanidamodar
//   */

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_first/application/auth/cubit/auth_cubit.dart';

class SignInPage extends StatefulWidget {
  static final String path = "lib/src/pages/login/login1.dart";

  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BlocProvider(
        create: (context) => AuthCubit(),
        child: Container(
        padding: EdgeInsets.all(20.0),
        color: Colors.grey.shade800,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  controller : _emailController,
                  title: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Email address:",
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.email,
                        color: Colors.white30,
                      )),
                )),
                Divider(
                  color: Colors.grey.shade600,
                ),
                ListTile(
                  controller : _passwordController,
                    title: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Password:",
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.lock,
                        color: Colors.white30,
                      )),
                )),
                Divider(
                  color: Colors.grey.shade600,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        onPressed: () {
                          //panggil cubit untuk signIn user
                          
                        },
                        color: Colors.cyan,
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white70, fontSize: 16.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Forgot your password?',
                  style: TextStyle(color: Colors.grey.shade500),
                )
              ],
            ),
          ],
        ),
          ),
      )
    );
  }
}
