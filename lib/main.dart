import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:hadis/controllers/auth_controller.dart';
import 'package:hadis/routes/route.dart';
import "package:hadis/screens/splashscreen/splashscreen.dart";
import "package:hadis/screens/main_screen/controller/home_controller.dart";




// void main() => runApp(MyApp());
Future<void> main() async{
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp().then((value) => Get.put(AuthController()));
    runApp(MyApp());
}



class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp>{

    // FetchAPI
    // HomeController home = Get.put(HomeController());


    @override
    Widget build(BuildContext context) {
        return GetMaterialApp(
            title: "Hadis",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'Montserrat'),
            home: SplashscreenPage(),
            getPages: AppPages.pages,

            // title: "Hadis",
            // debugShowCheckedModeBanner: false,
            // theme: ThemeData(fontFamily: 'Montserrat'),
            // initialRoute: '/login',
            // routes: <String, WidgetBuilder> {
            //     "/splashscreen": (BuildContext context) => SplashscreenPage(),
            //     "/login": (BuildContext context) => LoginPage(),
            //     "/signup": (BuildContext context) => SignupPage(),
            //     "/home": (BuildContext context) => HomePage(),
            //     "/contenthadis": (BuildContext context) => ContenthadisPage(),
            //     "/detailhadis": (BuildContext context) => DetailhadisPage(),
            //     "/profile": (BuildContext context) => ProfilePage(),
            //
            // }
        );
    }
}
