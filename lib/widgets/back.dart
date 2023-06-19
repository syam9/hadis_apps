import "package:flutter/material.dart";
import "package:hadis/constants/theme.dart";
import "package:hadis/widgets/input1.dart";

extension ProfileBack on Back {
  forProfile(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: UIColor.blackgrey.withOpacity(0.1),
                      ),
                    ),
                    const Icon(Icons.arrow_back, size: 30.0, color: UIColor.black),
                  ],
                ),
                onTap: () {
                  print("back");
                  Navigator.pop(context);
                },
              ),

          const SizedBox(width: 30),
          const Padding(
            padding: EdgeInsets.only(top: 13),
            child: Text("Profile",style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          ),

            ]),
      ],
    );
  }
}

extension OtherBack on Back {
  forDetailHadis(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: UIColor.blackgrey.withOpacity(0.1),
                      ),
                    ),
                    const Icon(Icons.arrow_back, size: 30.0, color: UIColor.black),
                  ],
                ),
                onTap: () {
                  print("back");
                  Navigator.pop(context);
                }),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text("Abu Daud",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                Text("Hadis",
                    style: TextStyle(
                        fontSize: 20.0, color: UIColor.black.withOpacity(0.5))),
              ],
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    content: SizedBox(
                      width: 260.0,
                      height: 200.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    width:
                                        MediaQuery.of(context).size.width / 1.9,
                                    child: const Text("Enter number do you want?",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 0.0,
                                      right: 0.0,
                                      bottom: 0.0,
                                      left: 5),
                                  alignment: Alignment.topRight,
                                  child: const Icon(
                                    Icons.close,
                                    color: UIColor.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              const Input(),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: UIColor.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ), // RoundedRectangleBorder
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(context, '/home');
                                  },
                                  child: const Text('Login',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Container(
            width: 80,
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: UIColor.blue,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: UIColor.blue.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const Text("No. 3",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: UIColor.white)),
          ),
        ),
      ],
    );
  }
}

class Back extends StatelessWidget {
  final String? target;
  final bool statustitle;
  final String? title;
  final String? subtitle;

  const Back({
    this.target,
    this.statustitle = true,
    this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: UIColor.blackgrey.withOpacity(0.1),
                ),
              ),
              const Icon(Icons.arrow_back, size: 30.0, color: UIColor.black),
            ],
          ),
          onTap: () {
            print("back");
            Navigator.pop(context);
          },
        ),
        statustitle
            ? TitleFunction(title: "Abu Daud", subtitle: "Hadis")
            : Container()
      ],
    );
  }
}

TitleFunction({title = "", subtitle = ""}) {
  return Row(
    children: <Widget>[
      const SizedBox(width: 30),
      Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,
                style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            Text(subtitle,
                style: TextStyle(
                    fontSize: 20.0, color: UIColor.black.withOpacity(0.5))),
          ],
        ),
      ),
    ],
  );
}
