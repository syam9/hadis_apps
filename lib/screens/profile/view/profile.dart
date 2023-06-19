import 'package:flutter/material.dart';
import 'package:hadis/widgets/back.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Back().forProfile(context),
                  const SizedBox(height: 50),
                  const Text("Update Information", style: TextStyle(fontSize: 20)),
                  const Divider(height: 40),
                  const Text("Change Password", style: TextStyle(fontSize: 20)),
                  const Divider(height: 40),
                  const Text("About", style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ), // RoundedRectangleBorder
                  ),
                  onPressed: () {
                    // Navigator.pushNamed(context, '/home');
                    print("Logout");
                  },
                  child: const Text('Log Out', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
