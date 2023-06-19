import 'package:get/route_manager.dart';
import "package:flutter/material.dart";
import "package:get/get.dart";

import "package:hadis/screens/splashscreen/splashscreen.dart";

import "package:hadis/screens/login/controller/login_controller.dart";
import "package:hadis/screens/login/binding/login_binding.dart";
import "package:hadis/screens/login/view/login.dart";

import "package:hadis/screens/signup/controller/signup_controller.dart";
import "package:hadis/screens/signup/binding/signup_binding.dart";
import "package:hadis/screens/signup/view/signup.dart";

import "package:hadis/screens/main_screen/controller/home_controller.dart";
import "package:hadis/screens/main_screen/binding/home_binding.dart";
import "package:hadis/screens/main_screen/view/home.dart";

import "package:hadis/screens/content_hadis/controller/contenthadis_controller.dart";
import "package:hadis/screens/content_hadis/binding/contenthadis_binding.dart";
import "package:hadis/screens/content_hadis/view/contenthadis.dart";

import "package:hadis/screens/detail_hadis/controller/detailhadis_controller.dart";
import "package:hadis/screens/detail_hadis/binding/detailhadis_binding.dart";
import "package:hadis/screens/detail_hadis/view/detailhadis.dart";

import "package:hadis/screens/profile/controller/profile_controller.dart";
import "package:hadis/screens/profile/binding/profile_binding.dart";
import "package:hadis/screens/profile/view/profile.dart";



class AppPages {
    static final pages = [
        GetPage(
            name: RouteName.splashscreen,
            page: () => SplashscreenPage(),
        ),
        GetPage(
            name: RouteName.login,
            page: () => LoginPage(),
            binding: LoginBinding(), 
        ),
        GetPage(
            name: RouteName.signup,
            page: () => SignupPage(),
            binding: SignupBinding(), 
        ),
        GetPage(
            name: RouteName.home,
            page: () => HomePage(),
            binding: HomeBinding(), 
        ),
        GetPage(
            name: RouteName.contenthadis,
            page: () => ContenthadisPage(),
            binding: ContenthadisBinding(), 
        ),
        GetPage(
            name: RouteName.detailhadis,
            page: () => DetailhadisPage(),
            binding: DetailhadisBinding(), 
        ),
        GetPage(
            name: RouteName.profile,
            page: () => ProfilePage(),
            binding: ProfileBinding(), 
        ),


    ];
}


abstract class RouteName {
    static const splashscreen = '/';
    static const login = '/login';
    static const signup = '/signup';
    static const home = '/home';
    static const contenthadis = '/contenthadis';
    static const detailhadis = '/detailhadis';
    static const profile = '/profile';
}
