import 'package:flutter/material.dart';
import 'package:hadis/constants/theme.dart';
import 'package:hadis/widgets/back.dart';

class DetailhadisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
                children: <Widget> [
                    const Back().forDetailHadis(context),

                    const SizedBox(height: 30),

                    Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: UIColor.blackgrey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget> [
                                Text("Jawi", style: TextStyle(fontSize: 22, color: UIColor.black)),
                            ],
                        ),
                    ),

                    const SizedBox(height: 20),

                    Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: UIColor.blackgrey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget> [
                                Text("Maksud", style: TextStyle(fontSize: 22, color: UIColor.black)),
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
