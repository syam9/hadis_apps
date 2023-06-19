import "package:flutter/material.dart";
import "package:hadis/constants/theme.dart";
import "package:hadis/widgets/back.dart";
// import "package:hadis/widgets/rangeslider.dart";
import "package:flutter_svg/flutter_svg.dart";

class ContenthadisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                child: Column(
                  children: <Widget>[
                    const Back(
                        statustitle: true,
                        title: "Abu Daud",
                        subtitle: "Hadith"),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        search(context),
                        const SizedBox(width: 10),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: UIColor.blue,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: [
                              BoxShadow(
                                color: UIColor.blue.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset("assets/images/pic6.svg"),
                            ),
                            onTap: () {
                              print("moddal");
                              showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30.0),
                                    ),
                                  ),
                                  backgroundColor: UIColor.white,
                                  builder: (context) {
                                    return SizedBox(
                                      height: 350,
                                      child: Padding(
                                        padding: const EdgeInsets.all(25.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                // Align(
                                                //     alignment: Alignment.center,
                                                //     child: Container(
                                                //         width: 50,
                                                //         height: 5,
                                                //         decoration: BoxDecoration(
                                                //             color: UIColor.blackgrey.withOpacity(0.5),
                                                //             borderRadius: BorderRadius.circular(15.0)
                                                //         ),
                                                //     ),
                                                // ),

                                                const SizedBox(height: 15),
                                                const Text("Filter By",
                                                    style: TextStyle(
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                const SizedBox(height: 15),
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 100,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color: UIColor.blue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: const Text("Search",
                                                          style: TextStyle(
                                                              fontSize: 20.0,
                                                              color: UIColor
                                                                  .white)),
                                                    ),
                                                    const SizedBox(width: 15),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 100,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        color: UIColor.blackgrey
                                                            .withOpacity(0.2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Text("Number",
                                                          style: TextStyle(
                                                              fontSize: 20.0,
                                                              color: UIColor
                                                                  .blackgrey
                                                                  .withOpacity(
                                                                      0.5))),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 20),
                                                const Text("Range Number",
                                                    style: TextStyle(
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),

                                            // RangesliderPage
                                            // RangesliderPage(),

                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      1.5,
                                                  height: 50,
                                                  child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary: UIColor.blue,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ), // RoundedRectangleBorder
                                                    ),
                                                    onPressed: () {},
                                                    child: const Text('Find',
                                                        style: TextStyle(
                                                            fontSize: 20)),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("Close",
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: UIColor
                                                              .blackgrey
                                                              .withOpacity(
                                                                  0.5))),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 100,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ListTile(
                              title: const Text("Abu Daud",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              subtitle: const Text("Description"),
                              onTap: () {
                                print("testing");
                                Navigator.pushNamed(context, '/detailhadis');
                                // Navigator.pushNamed(context, '/contenthadis');
                              },
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

search(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.4,
    child: TextField(
      onTap: () {},
      onChanged: null,
      controller: null,
      style: const TextStyle(height: 1, fontSize: 18.0),
      decoration: InputDecoration(
        filled: true,
        fillColor: UIColor.blackgrey.withOpacity(0.1),
        hintStyle: const TextStyle(
          color: UIColor.blackgrey,
        ),
        suffixIcon: null,
        prefixIcon: null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(
              color: UIColor.blackgrey.withOpacity(0.1),
              width: 1.0,
              style: BorderStyle.solid),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
              color: UIColor.blackgrey.withOpacity(0.1),
              width: 1.0,
              style: BorderStyle.solid),
        ),
        hintText: "Search..",
        contentPadding: const EdgeInsets.only(left: 30.0),
      ),
      obscureText: false,
    ),
  );
}
