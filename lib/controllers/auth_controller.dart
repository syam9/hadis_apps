import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hadis/screens/main_screen/view/home.dart';
import 'package:hadis/routes/route.dart';
// import 'package:hadis/screens/login.dart';



class AuthController extends GetxController {
    
    static AuthController instance = Get.find();
    //email, password, 
    late Rx<User?> _user;
    FirebaseAuth auth = FirebaseAuth.instance;


    @override
    void onReady(){
        super.onReady();
        _user = Rx<User?>(auth.currentUser);

        //our user would be notified
        _user.bindStream(auth.userChanges());
        ever(_user, _initialScreen);

    }


    _initialScreen(User? user){
        if(user==null){
            Get.toNamed("/login");
            print("tiada session login");

        }else{
            // Get.offAll(()=>HomePage(email:user.email!));
            Get.toNamed("/home", arguments: "${user.email!}");
            print("session login");
            print(user.email!);
        }
    }


    void register(context, String email, password) async{

        try{
            await auth.createUserWithEmailAndPassword(email: email, password: password);
            Get.to(RouteName.login);

            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));

        }catch(e){
            Get.snackbar("About User", "User message",
                backgroundColor: Colors.greenAccent,
                snackPosition: SnackPosition.BOTTOM,
                    titleText: const Text(
                        "Account creation failed",
                        style: TextStyle(color: Colors.white),
                    ),
                    messageText: Text(
                        e.toString(),
                        style: const TextStyle(
                            color: Colors.white
                        ),
                    ),
            );
        }
    }


    void login(context, String email, password) async {
        try{
            await auth.signInWithEmailAndPassword(email: email, password: password);
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage(email: email)));
            Get.offAllNamed("/home", arguments: email);
            

        }catch(e){
            print("Login");
            Get.snackbar("About Login", "Login message",
                backgroundColor: Colors.redAccent,
                snackPosition: SnackPosition.BOTTOM,
                    titleText: const Text(
                        "Login Failed",
                        style: TextStyle(color: Colors.white),
                    ),
                    messageText: Text(
                        // e.toString(),
                        "Please enter your login!",
                        style: const TextStyle(
                            color: Colors.white
                        ),
                    ),
            );

        }

    }


    void logOut(context) async{
        try{
            await auth.signOut();
            Get.offNamed("/login");
            // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));

        }catch(e){
            print("Your account has been Logout");

        }

    }



}
