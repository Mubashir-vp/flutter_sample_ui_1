import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';

class Ui4 extends StatefulWidget {
  @override
  _Ui4State createState() => _Ui4State();
}

class _Ui4State extends State<Ui4> {
  VideoPlayerController? _controller;

  Future<void>? _initilizeVideoPlayerFuture;
  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://www.youtube.com/watch?v=YNa0PQcOjL8");
    _initilizeVideoPlayerFuture = _controller!.initialize();
    super.initState();
    _controller!.setLooping(true);
    _controller!.setVolume(1);
  }
// @override
//   void dispose() {
//   _controller!.dispose();
//     super.dispose();
//   }

  @override
  Widget listTile({
    required String title,
    required String subTitle,
    required IconData iconString,
  }) {
    return ListTile(
      leading: Container(
        width: 58,
        height: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(29)),
          border: Border.all(color: Colors.blue, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            (
              iconString
            ),
            color: Colors.blue,
            size: 40,
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Quicksand'),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontFamily: 'Quicksand',
            color: Colors.grey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 140,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_back_sharp,
                    size: 35,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      "Dukaan Premium",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: 400,
              height: 130,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      top: -70,
                      left: 25,
                      child: Card(
                        child: Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(top: 77),
                                child: Text(
                                  "Get Dukaan Premium for just\n                 4,999/year",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "All the advanced features for scaling your\n                           business",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Quicksand',
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  //
                  Positioned(
                    top: -50,
                    left: 115,
                    child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        )),
                  ),
                  Positioned(
                      top: -50,
                      left: 175,
                      child: Text(
                        "dukaan",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Positioned(
                      top: -18,
                      left: 205,
                      child: Text(
                        "PREMIUM",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )),
                  Positioned(
                    top: -50,
                    left: 285,
                    child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.5)),
                            border: Border.all(color: Colors.black)),
                        child: Center(
                            child: Text(
                          "R",
                          style: TextStyle(fontSize: 10),
                        ))),
                  ),
                ],
              )),
          const Padding(
            padding: EdgeInsets.only(right: 310, top: 5),
            child: Text(
              "Features",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          listTile(

              title: "Custom Domain name",
              subTitle:
                  "Get your own custom domain and build your brand in the internet.", iconString:Icons.language,
          ),
          listTile(
              title: "Verified seller badge",
              subTitle:
                  "Get green verified badge under your store name and build trust.",
              iconString: Icons.verified),
          listTile(
              title: "Dukaan for PC",
              subTitle:
                  "Access all the exclusive premium features on Dukaan for PC.",
              iconString: Icons.laptop_chromebook),
          listTile(
              title: "Priority Support",
              subTitle:
                  "Get your questions and resolved with our priority customer support.",
              iconString: Icons.headset_mic),
          Divider(
            thickness: 2,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 180, top: 5),
            child: Text(
              "What is Dukaan Premium",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 158,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: AssetImage("assets/videoImg.png"),
                    fit: BoxFit.cover,
                  )),
            ),


          )
        ],
      ),

    );
  }
}
