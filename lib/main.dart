import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

var banneritems = ["Burger ", "Cheese chilly ", "Noodles", "Pizza"];
var bannerimage = [
  "images/burger.jpg",
  "images/cheesechilly.jpg",
  "images/noodles.jpg",
  "images/pizza.jpg",
];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenhight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenhight,
        width: screenwidth,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                      Text(
                        "Foodies",
                        style: TextStyle(fontSize: 45, fontFamily: "Samantha"),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.person))
                    ],
                  ),
                ),
                bannerwidgetarea()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class bannerwidgetarea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenhighs = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    PageController controller =
        PageController(viewportFraction: 0.8, initialPage: 1);

    List<Widget> banners = [];

    for (int x = 0; x < banneritems.length; x++) {
      var bannerview = Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                child:
                    Image.asset(bannerimage[x].toString(), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black54])),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    banneritems[x],
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'More than 40% off',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      );
      banners.add(bannerview);
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: screenhighs * 4 / 16,
        width: screenhighs * 7 / 16,
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: banners,
        ),
      ),
    );
  }
}

widget screen(){
  return container(
    
  )
}