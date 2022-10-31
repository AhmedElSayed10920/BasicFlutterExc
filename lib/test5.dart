import 'package:course/test2.dart';
import 'package:flutter/material.dart';

class bbb extends StatefulWidget {
  const bbb({super.key});

  @override
  State<bbb> createState() => _bbbState();
}

class _bbbState extends State<bbb> {
  send() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
    } else {
      print("not valid");
    }
  }

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.red,width: 2)),
                labelText: "Email", hintText: "Enter Your E-Mail",
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Form(
              key: formstate,
              child: TextFormField(
                  validator: (text) {
                    if (text!.runes.length < 4) {
                      return "Non-Valid";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  // textInputAction: TextInputAction.go,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    // enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.red,width: 2)),
                    labelText: "Password", hintText: "Enter Your Password",
                    prefixIcon: Icon(Icons.password),
                  )),
            ),
          ),
          ElevatedButton(onPressed: send, child: Text("Send"))
        ],
      ),
    );
  }
}

class Zzz extends StatefulWidget {
  const Zzz({super.key});

  @override
  State<Zzz> createState() => _ZzzState();
}

class _ZzzState extends State<Zzz> {
  var valslider = 0.0;
  var email;
  var password;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = new GlobalKey<FormState>();
    send() {
      var formdata = formstate.currentState;
      if (formdata!.validate()) {
        formdata.save();
        print("E-Mail: $email");
        print("Password: $password");
      } else {
        print("not valid");
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formstate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                    onSaved: (newValue) {
                      email = newValue;
                    },
                    validator: (value) {
                      if (value!.length < 10) {
                        return "Not-Valid";
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Your E-Mail",
                      labelStyle: TextStyle(color: Colors.red),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.red, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: "E-Mail",
                      prefixIcon: Icon(Icons.email),
                    )),
                Divider(
                  thickness: 0,
                  color: Colors.white,
                ),
                TextFormField(
                    validator: (value) {
                      if (value!.length < 8) {
                        return "Not-Valid";
                      } else
                        return null;
                    },
                    onSaved: (newValue) {
                      password = newValue;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      labelStyle: TextStyle(color: Colors.red),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.red, width: 2)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Password",
                      prefixIcon: Icon(Icons.password),
                    )),
                ElevatedButton(onPressed: send, child: Text("Send")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Tests();
                      }));
                    },
                    child: Text("Move to Another Page")),
                Slider(
                    min: 0.0,
                    max: 100.0,
                    value: valslider,
                    onChanged: (val) {
                      setState(() {
                        valslider = val;
                      });
                    }),
                ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              child: Text("Hello"),
                              color: Colors.red,
                              height: 200,
                            );
                          });
                    },
                    child: Text("Info.."))
              ],
            )),
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  List names = ["Ahmed", "Mohamed", "Sayed", "Ali", "Wael", "Hamza"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterNames =
        names.where((element) => element.contains(query)).toList();
    return ListView.builder(
        itemCount: query == "" ? names.length : filterNames.length,
        itemBuilder: ((context, i) {
          return InkWell(
            onTap: () {
              query = query == "" ? names[i] : filterNames[i];
              showResults(context);
            },
            child: Container(
                padding: EdgeInsets.all(10),
                child: query == ""
                    ? Text(
                        "${names[i]}",
                        style: TextStyle(fontSize: 20),
                      )
                    : Text(
                        "${filterNames[i]}",
                        style: TextStyle(fontSize: 20),
                      )),
          );
        }));
  }
}

class Sss extends StatefulWidget {
  const Sss({super.key});

  @override
  State<Sss> createState() => _SssState();
}

class _SssState extends State<Sss> {
  late ScrollController sc;
  @override
  void initState() {
    sc = new ScrollController();
    sc.addListener(() {
      print(sc.offset);
      print(sc.position.maxScrollExtent);
      print(sc.position.minScrollExtent);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        controller: sc,
        children: [
          ...List.generate(
              20,
              (index) => Container(
                    color: index.isEven ? Colors.green : Colors.red,
                    child: Text("Container $index"),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 100,
                  ))
        ],
      ),
    );
  }
}
