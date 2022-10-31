import 'package:course/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TestList extends StatefulWidget {
  const TestList({super.key});

  @override
  State<TestList> createState() => _TestListState();
}

class _TestListState extends State<TestList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.red,
            thickness: 3,
          );
        },
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            margin: EdgeInsets.only(top: 10),
            height: 150,
            color: Colors.red,
            child: Text("Hello :$index"),
          );
        },
      ),
      // body: Container(
      //     child: ListView(
      //   scrollDirection: Axis.vertical,
      //   physics: BouncingScrollPhysics(),
      //   padding: EdgeInsets.all(20),
      //   children: [
      //     // Container(width:300,height:300,color: Colors.red,child: Text("Helllllo"),),
      //     // Container(width:300,height:300,color: Colors.blue,child: Text("Helllllo"),),
      //     // Container(width:300,height:300,color: Colors.yellow,child: Text("Helllllo"),),
      //     // Container(width:300,height:300,color: Colors.purple,child: Text("Helllllo"),),
      //     // Container(width:300,height:300,color: Colors.green,child: Text("Helllllo"),),
      //     // Container(width:300,height:300,color: Colors.pink,child: Text("Helllllo"),),

      //     Text(
      //       "Mobile",
      //       style: TextStyle(fontSize: 30),
      //     ),
      //     ListView(
      //       shrinkWrap: true,
      //       children: [
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.red,
      //           child: Text("I Phone 13pro MAX"),
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.blue,
      //           child: Text("Samsung S22 Ultra"),
      //         ),
      //       ],
      //     ),

      //     Text(
      //       "Cars",
      //       style: TextStyle(fontSize: 30),
      //     ),
      //     ListView(
      //       shrinkWrap: true,
      //       children: [
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.red,
      //           child: Text("BMW"),
      //         ),
      //         Container(
      //           width: 200,
      //           height: 200,
      //           color: Colors.blue,
      //           child: Text("Ferrari"),
      //         ),
      //       ],
      //     ),
      //   ],
      // )),
    );
  }
}

class GridTest extends StatefulWidget {
  const GridTest({super.key});

  @override
  State<GridTest> createState() => GridTestState();
}

class GridTestState extends State<GridTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.red,
        //centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/duck.jpg"),
                backgroundColor: Colors.red,
              ),
              accountName: Text("Zenitsu PK"),
              accountEmail: Text("Kaido10920@gmail.com")),
          ListTile(
            title: Text("Home Page"),
            leading: Icon(Icons.home),
            onTap: () {
              print("Switch to Home Page");
            },
          ),
          ListTile(
            title: Text("InBox"),
            leading: Icon(Icons.inbox),
            onTap: () {
              print("Switch to Emails");
            },
          ),
          ListTile(
            title: Text("Send"),
            leading: Icon(Icons.send),
            onTap: () {
              print("Switch to Send");
            },
          ),
          ListTile(
            title: Text("Help"),
            leading: Icon(Icons.help),
            onTap: () {
              print("Switch to Help Page");
            },
          ),
        ],
      )),
      body: GridView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.red,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: Image.asset("images/duck.jpg"),
          );
        },
      ),
    );
  }
}
