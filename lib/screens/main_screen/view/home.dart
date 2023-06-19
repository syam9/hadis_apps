import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:hadis/constants/theme.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:hadis/controllers/auth_controller.dart";
import "package:hadis/screens/main_screen/controller/home_controller.dart";
import "package:hadis/services/provider.dart";


class HomePage extends GetView<HomeController> {
// class HomePage extends StatelessWidget{
//
//   final _liveController = Get.put(HomeController());


  String email;
  HomePage({Key? key, this.email = "null"}) : super(key: key);

  String url = "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80";


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView( 
        child: Column(
          children: <Widget>[

           // Obx(()=>
            Column(
                children: <Widget> [
                    Text("${controller.homeInfo.value.code}"),
                    GestureDetector(
                        onTap:() => controller.getLiveStatusFromApi(),
                        child: Text("smart"),
                    ),
                ],
            ),
           // ),

            // GestureDetector(
            //     onTap: (){
            //         controller.fetchapi();
            //     },
            //     child: Text("BUTTON"),
            // ),



            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // const Text("Welcome!, ${email}",
                          Text("${Get.arguments}",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 5),
                          Text("Everyday with hadith",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: UIColor.black.withOpacity(0.5))),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: UIColor.white,
                          boxShadow: [
                            BoxShadow(
                              color: UIColor.blackgrey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: GestureDetector(
                            onTap:(){
                                // Navigator.pushNamed(context, '/profile');
                                AuthController.instance.logOut(context);


                            },
                            child: Padding(
                              padding: const EdgeInsets.all(7),
                              child: SvgPicture.asset("assets/images/pic1.svg",
                                  color: UIColor.blue),
                            ),
                        ), 



                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.only(
                  top: 0.0, right: 0.0, bottom: 0.0, left: 20.0),
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    // itemCount: _liveController.homeInfo.value.dataHadis.length,
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 220,
                        height: 100,
                        margin: const EdgeInsets.only(
                            top: 0.0, right: 20.0, bottom: 0.0, left: 0.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(url),
                              fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(35.0),
                          // color: Colors.red,
                          boxShadow: [
                            BoxShadow(
                              color: UIColor.blackgrey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),

                        child: Stack(
                            children: <Widget> [
                                Container(
                                    alignment: Alignment.topLeft,
                                    padding: const EdgeInsets.only(top: 30, left: 30, bottom: 0.0, right: 0.0),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const <Widget>[
                                            Text("Title", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: UIColor.white)),
                                            Text("Description", style: TextStyle(fontSize: 20, color: UIColor.white)),
                                        ],
                                    ), 
                                ),

                                Container(
                                    alignment: Alignment.bottomRight,
                                    padding: const EdgeInsets.only(top: 0.0, left: 0.0, bottom: 30, right: 30),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: <Widget>[
                                            Container(
                                                width: 60,
                                                height: 60,
                                                decoration: BoxDecoration(
                                                    color: UIColor.white,
                                                    borderRadius: BorderRadius.circular(20),
                                                ),
                                            ),

                                            const Icon(
                                                Icons.volume_up_rounded,
                                                color: UIColor.black,
                                                size: 30.0,
                                            ),

                                        ],
                                    ), 
                                ),

                            ],
                        ),



                      );
                    }),
              ),
            ),

            const SizedBox(height: 10),
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text("List of Hadith", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                      Text("${controller.homeInfo.value.message}", style: TextStyle(fontSize: 20.0, color: UIColor.blackgrey.withOpacity(0.5))),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: controller.homeInfo.value.dataHadis.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ListTile(
                              leading: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: UIColor.blue,
                                    borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: SvgPicture.asset("assets/images/pic5.svg"),
                                ),                              ),
                              title: Text("${controller.homeInfo.value.dataHadis[index].name}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                              subtitle: Text("${controller.homeInfo.value.dataHadis[index].id}]"),
                              onTap:(){
                                  print("testing");
                                  Navigator.pushNamed(context, '/contenthadis');
                              },
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
