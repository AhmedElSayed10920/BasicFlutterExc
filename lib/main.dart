import 'package:course/test3.dart';
import 'package:course/test4.dart';
import 'package:course/test5.dart';
import 'package:flutter/material.dart';
import 'package:course/test.dart';
import 'package:course/test2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Zzz(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        width: 300,
        height: 300,
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
        padding: EdgeInsets.only(top: 5),
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.red, width: 10),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/duck.jpg"),
            repeat: ImageRepeat.noRepeat,
          ),
        ),
        child: Text("Home Page",
            style: TextStyle(
                fontSize: 30,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                letterSpacing: 5,
                wordSpacing: 10,
                decoration: TextDecoration.lineThrough,
                shadows: [
                  Shadow(
                      color: Colors.red,
                      blurRadius: 5.0,
                      offset: Offset(10.0, 10.0))
                ],
                backgroundColor: Colors.green)),
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey,
            //width: double.infinity,
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  color: Colors.yellow,
                  shadowColor: Colors.blue,
                  elevation: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.black, width: 3)),
                  child: Text("Hello Flutter ",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.bold)),
                ),
                Text("hello flutter"),
                Text("hello flutter"),
                Text("hello flutter"),
                Image.asset("images/duck.jpg"),
                Image.network(
                    "https://miro.medium.com/max/1400/0*LtCDFBQudFeDS_f6")
              ],
            ),
          ),
        ));
  }
}

class TestR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: double.infinity,
          color: Colors.blue,
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                child: Text("Container",
                    style: TextStyle(fontSize: 10, color: Colors.white)),
              ),
              Card(child: Text("Card", style: TextStyle(fontSize: 10))),
              Text("Text One"),
              Image.network(
                  "https://play-lh.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1")
            ],
          ),
        ));
  }
}

class TestS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        // overflow :OverFlow.visible,
        children: [
          Positioned(
            top: 100,
            right: 100,
            left: 100,
            bottom: 100,
            child: Container(color: Colors.red, child: Text("Container 1")),
          )

          // Container(
          //     width: 300,
          //     height: 300,
          //     margin: EdgeInsets.only(top: 20),
          //     color: Colors.green,
          //     child: Text("Container 2")),
          // Container(
          //     width: 200,
          //     height: 200,
          //     margin: EdgeInsets.only(top: 40),
          //     color: Colors.yellow,
          //     child: Text("Container 3"))
        ],
      ),
    );
  }
}

class TryExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Text("hehehe"))),
          Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Text("hahaha"),
              )),
          Expanded(
              flex: 2,
              child: Container(
                  width: double.infinity,
                  color: Colors.black,
                  child: Text("ahahah"))),
        ],
      ),
    );
  }
}

class Exc1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              //margin: EdgeInsets.only(top: 100),
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(color: Colors.black, width: 4),
                  ),
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Strawberry Pavlova Recipe",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      '''pavlova is a meriogue-bassed dessert named after the Russian ballerina Anna Pavlova.Pavlova features a crisp crust and soft, light inside,toppedwith fruit andwhipped cream''',
                      style: TextStyle(fontSize: 20, height: 1.5),
                      textAlign: TextAlign.center,
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star, color: Colors.yellow),
                            Icon(Icons.star),
                            Icon(Icons.star)
                          ],
                        ),
                        //Spacer(),
                        Text("17 Reviews",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.restaurant,
                                color: Colors.green,
                                size: 50,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text("Feed"),
                              ),
                              Text("2 - 4")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.category,
                                color: Colors.green,
                                size: 50,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text("Feed"),
                              ),
                              Text("2 - 4")
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.emoji_food_beverage,
                                color: Colors.green,
                                size: 50,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text("Feed"),
                              ),
                              Text("2 - 4")
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                )
              ]),
        ));
  }
}

class TestButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test Buttons"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child:
                    ElevatedButton(onPressed: () {}, child: Text("Sign Up"))),

            ElevatedButton.icon(
                onPressed: () {
                  print("send email");
                },
                icon: Icon(Icons.mail),
                label: Text("Email"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),

            InkWell(
              onTap: () {},
              child: Icon(Icons.ac_unit),
            ),

            IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),

            MaterialButton(
              onPressed: () {},
              child: Text("Custom Buttom"),
              color: Colors.blue,
              textColor: Colors.white,
              splashColor: Colors.cyan,
              padding: EdgeInsets.all(30),
              shape: Border.all(color: Colors.brown, width: 3),
              elevation: 10,
            ),
            TextButton(
                onPressed: () {
                  print("text");
                },
                child: Text("press here"))

            // ElevatedButton(
            //   onPressed: () {
            //     print("Zenitsu PK");
            //   },
            //   child: Text("Leader"
            //   , style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
            //   style: ElevatedButton.styleFrom(
            //       primary: Colors.yellow,
            //       padding: EdgeInsets.all(20),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(50)),
            //      // elevation:100,
            //       //shadowColor: Colors.red,
            //   )

            // )
          ],
        ));
  }
}
