import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Expanded(
            flex: 2,
            child: Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(
                    child: Align(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 36,
                              ),
                              SizedBox(
                                width: 110,
                              ),
                              Center(
                                child: Text(
                                  "Dukaan Premium",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    width: 500,
                    height: 220,
                    color: Colors.blue,
                  ),
                  Positioned(
                    right: 30,
                    top: 100,
                    left: 30,
                    bottom: 400,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        child: Stack(children: [
                          Positioned(
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  child: FaIcon(
                                    FontAwesomeIcons.shoppingBag,
                                    size: 30,
                                  ),
                                  radius: 30,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      "dukaan",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 50),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 102),
                                      // color: Colors.yellowAccent,
                                      child: const Text(
                                        "PREMIUM",
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            top: 50,
                            left: 20,
                          ),
                          Positioned(
                            child: Column(
                              children: const [
                                Text(
                                  "Get Dukaan Premium for just",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text("₹4,999/year",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "All the advanced features for scaling your",
                                    style: TextStyle(color: Colors.grey)),
                                Text("business.",
                                    style: TextStyle(color: Colors.grey))
                              ],
                            ),
                            left: 20,
                            top: 140,
                            right: 20,
                          )
                        ]),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 100,
                      height: 20,
                      child: const Text(
                        "Features",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    top: 360,
                    left: 18,
                  ),
                  Positioned(
                    child: ListView(
                      children: const [
                        ListTile(
                          leading: CircleAvatar(
                            child: Icon(Icons.language),
                            radius: 30,
                          ),
                          title: Text("Custom domain name"),
                          subtitle: Text("Get your own custom domain and build"
                              "our brand on internet"),
                          isThreeLine: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              child: Icon(Icons.verified), radius: 30),
                          title: Text("Verified seller badge"),
                          subtitle:
                              Text("Get green verified custom domain and build"
                                  "our brand on internet"),
                          isThreeLine: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              child: Icon(Icons.ondemand_video), radius: 30),
                          title: Text("Dukaan for PC"),
                          subtitle: Text("Get your own custom domain and build"
                              "our brand on internet"),
                          isThreeLine: true,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              child: Icon(Icons.headset_mic), radius: 30),
                          title: Text("Priority support"),
                          subtitle: Text("Get your own custom domain and build"
                              "our brand on internet"),
                          isThreeLine: true,
                        ),
                      ],
                    ),
                    top: 380,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
