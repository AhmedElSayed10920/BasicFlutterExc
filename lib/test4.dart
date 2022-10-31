import 'package:flutter/material.dart';

class Test4 extends StatefulWidget {
  const Test4({super.key});

  @override
  State<Test4> createState() => _Test4State();
}

class _Test4State extends State<Test4> with SingleTickerProviderStateMixin {
  TabController? mycontroller;
  int selectedindex = 0;
  List<Widget> widgetPages = [Text("Zenitsu Pk"), Text(" starZenitu ")];
  @override
  void initState() {
    mycontroller = new TabController(length: 2, vsync: this);
    pc = new PageController(initialPage: 2);

    super.initState();
  }

  PageController? pc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        centerTitle: true,
        bottom: TabBar(controller: mycontroller, tabs: [
          Tab(
            child: Text("One"),
          ),
          Tab(
            child: Text("Two"),
          )
        ]),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: PageView(
                controller: pc,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    child: Text("Hello Zenitsu"),
                  ),
                  Image.asset("images/duck.jpg"),
                  Text("hahahaha"),
                  Text("hahahaha"),
                  Text("hahahaha"),
                  Text("hahahaha"),
                ]),
          ),
          ElevatedButton(
              onPressed: () {
                pc!.animateToPage(1,
                    duration: Duration(seconds: 1), curve: Curves.bounceIn);
              },
              child: Text("Go to 1"))
        ],
      ),

      // widgetPages.elementAt(selectedindex),

      //  TabBarView(
      //   controller: mycontroller,
      //   children: [
      //     Column(
      //       children: [
      //         Container(
      //           child: Text("Hello"),
      //           width: 200,
      //           height: 200,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           child: Text("Hello"),
      //           width: 200,
      //           height: 200,
      //           color: Colors.orange,
      //         ),
      //       ],
      //     ),
      //     Column(
      //       children: [
      //         Container(
      //           child: Text("H"),
      //           width: 200,
      //           height: 200,
      //           color: Colors.yellow,
      //         ),
      //         Container(
      //           child: Text("H"),
      //           width: 200,
      //           height: 200,
      //           color: Colors.orange,
      //         ),
      //       ],
      //     ),
      //   ],
      // ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: "Page"),
          BottomNavigationBarItem(icon: Icon(Icons.mail_rounded), label: "Mail")
        ],
        backgroundColor: Colors.green,
        currentIndex: selectedindex,
        iconSize: 25,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
      ),
    );
  }
}
