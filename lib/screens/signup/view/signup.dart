import 'package:flutter/material.dart';
import "package:hadis/controllers/auth_controller.dart";

import "package:hadis/constants/theme.dart";
import "package:hadis/widgets/input1.dart";
import "package:hadis/widgets/back.dart";



class SignupPage extends StatefulWidget {
    const SignupPage({Key? key}) : super(key: key);
    
    @override
    _SignupPageState createState() => _SignupPageState();

}



class _SignupPageState extends State<SignupPage>{

  bool _secureText = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

      var width = MediaQuery.of(context).size.width;

      return SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
                    child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                            Back(statustitle: false),
                            SizedBox(height: 30),
                            Text("Sign Up", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text("Create your account", style: TextStyle(fontSize: 20)),

                            SizedBox(height: 40),
                            Input(placeholder: "Username", obssecure: false),
                            SizedBox(height: 15),
                            Input(placeholder: "Email", controller: emailController, obssecure:false),
                            SizedBox(height: 15),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0.0),
                                child: Input(
                                        controller: passwordController,
                                        needicon: false, 
                                        iconsy: "assets/images/pic4.svg", 
                                        placeholder: "Password",
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
                            SizedBox(height: 15),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0.0),
                                child: Input(
                                        needicon: false, 
                                        iconsy: "assets/images/pic4.svg", 
                                        placeholder: "Confirmation Password",
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

                            SizedBox(height: 50),

                            Container(
                                width: width,
                                height: 50,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: UIColor.blue,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50),), // RoundedRectangleBorder                                
                                    ), 
                                    onPressed: () {
                                        print("testing");
                                        AuthController.instance.register(context, emailController.text.trim(), passwordController.text.trim());
                                    },
                                    child: const Text('Login', style: TextStyle(fontSize: 20)),
                                  ),
                            ),

                            SizedBox(height: 100),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                    Text("I already have an account?", style: TextStyle(fontSize: 20)),
                                    Text("Log In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: UIColor.blue)),

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
