import "package:flutter/material.dart";
import "package:hadis/constants/theme.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:get/get.dart";



class SplashscreenPage extends StatefulWidget{
    @override
    _SplashscreenPageState createState() =>  _SplashscreenPageState();

}



class _SplashscreenPageState extends State<SplashscreenPage>{

  // @override
  // void initState() {
  //   super.initState();
  //   new Future.delayed(
  //       const Duration(seconds: 3),
  //       () => Get.offNamed("/login")
  //       // () => Navigator.push(
  //       //       context,
  //       //       MaterialPageRoute(builder: (context) => LoginScreen()),
  //       //     )
  //       );
  // }


  @override
  Widget build(BuildContext context) {
    
    var responsive = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: UIColor.blue,
      body: Align(
        alignment: Alignment.center,
        child: Container(
            child: SvgPicture.asset(
                "assets/images/pic1.svg",
                color: Colors.white,
                width: 130,
                height: 130,
            ),
        ),
      ),
    );
  }
}
