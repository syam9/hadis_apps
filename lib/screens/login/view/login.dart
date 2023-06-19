import "package:hadis/controllers/auth_controller.dart";

import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import "package:hadis/constants/theme.dart";
import "package:hadis/widgets/input1.dart";


class LoginPage extends StatefulWidget {

    @override
    _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage>{

  bool _secureText = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
        
      var width = MediaQuery.of(context).size.width;

      return SafeArea(
            child: Scaffold(
                body: Container(
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                            Column(
                                children: <Widget> [
                                    SvgPicture.asset("assets/images/pic2.svg", color: UIColor.blue, width: 130, height: 130),
                                    const SizedBox(height: 10),
                                    const Text("Welcome Back", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: UIColor.black)),
                                    const SizedBox(height: 10),
                                    const Text("Login to your account", style: TextStyle(fontSize: 18, color: UIColor.blackgrey)),
                                    const SizedBox(height: 40),
                                    Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 40),
                                        child: Input(
                                                controller: emailController,
                                                needicon: true, 
                                                iconsy: "assets/images/pic3.svg", 
                                                placeholder: "Enter your email..",
                                                obssecure: false,

                                                ),
                                    ),
                                    const SizedBox(height: 15),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 40),
                                        child: Input(
                                                controller: passwordController,
                                                needicon: true, 
                                                iconsy: "assets/images/pic4.svg", 
                                                placeholder: "Enter your Password..",
                                                suffixIcon: IconButton(
                                                    icon: Icon(_secureText ? Icons.remove_red_eye : Icons.security),
                                                    onPressed:() {
                                                        setState((){
                                                            _secureText = !_secureText;
                                                        });
                                                    },
                                                ),
                                                obssecure: _secureText,

                                        ),
                                    ),

                                    const SizedBox(height: 40),

                                    SizedBox(
                                        width: width / 2,
                                        height: 50,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: UIColor.blue,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(50),), // RoundedRectangleBorder                                
                                            ), 
                                            onPressed: () {
                                                AuthController.instance.login(context, emailController.text.trim(), passwordController.text.trim());



                                            },
                                            child: const Text('Login', style: TextStyle(fontSize: 20)),
                                          ),
                                    ),

                                ],
                            ),


                            const SizedBox(height: 100),



                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                    const Text("Don't have an account? ", style: TextStyle(fontSize: 20)),

                                    GestureDetector(
                                        onTap:(){
                                            Navigator.pushNamed(context, '/signup');
                                        },
                                        child: const Text("Sign up here", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: UIColor.blue)),

                                    ),

                                ],
                            ),

                        ],
                    ),

                    ),
                ),
            ),
      );
  }
}
