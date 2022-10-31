import 'dart:developer';

import 'package:flutter/material.dart';

class Tests extends StatefulWidget {
  State<StatefulWidget> createState() {
    return TestsState();
  }
}

class TestsState extends State<Tests> {
  var Gender;
  var Government;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page One"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Choose Gender",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text("Male"),
                Radio(
                    value: "Male",
                    groupValue: Gender,
                    onChanged: (val) {
                      setState(() {
                        Gender = val!;
                      });
                    })
              ],
            ),
            Row(
              children: [
                Text("Female"),
                Radio(
                    value: "Female",
                    groupValue: Gender,
                    onChanged: (val) {
                      setState(() {
                        Gender = val!;
                      });
                    })
              ],
            ),
            Row(
              children: [
                Text("SW Engineer"),
                Radio(
                    value: "SW Engineer",
                    groupValue: Gender,
                    onChanged: (val) {
                      setState(() {
                        Gender = val!;
                      });
                    })
              ],
            ),
            Text(
              "Choose Government",
              style: TextStyle(fontSize: 20),
            ),
            RadioListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text("Cairo"),
                subtitle: Text("Egypt"),
                secondary: Icon(Icons.flag),
                tileColor: Colors.blue,
                value: "Cairo",
                groupValue: Government,
                onChanged: (val) {
                  setState(() {
                    Government = val;
                  });
                }),
            RadioListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text("Daqahlia"),
                subtitle: Text("Egypt"),
                secondary: Icon(Icons.flag),
                tileColor: Colors.blue,
                value: "Daqahlia",
                groupValue: Government,
                onChanged: (val) {
                  setState(() {
                    Government = val;
                  });
                }),
            RadioListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text("Alexandria"),
                subtitle: Text("Egypt"),
                secondary: Icon(Icons.flag),
                tileColor: Colors.blue,
                value: "Alexandria",
                groupValue: Government,
                onChanged: (val) {
                  setState(() {
                    Government = val;
                  });
                }),
            RadioListTile(
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text("Sinai"),
                subtitle: Text("Egypt"),
                secondary: Icon(Icons.flag),
                tileColor: Colors.blue,
                value: "Sinai",
                groupValue: Government,
                onChanged: (val) {
                  setState(() {
                    Government = val;
                  });
                })
          ],
        ),
      ),
    );
  }
}

class TestSw extends StatefulWidget {
  const TestSw({super.key});

  @override
  State<TestSw> createState() => _TestSwState();
}

class _TestSwState extends State<TestSw> {
  bool egypt = false;
  bool cairo = false;
  bool fastFood = false;
  bool club = false;
  var gender;
  var foot;
  var name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Text("TestSwitch"),
                Switch(
                    value: egypt,
                    onChanged: (val) {
                      setState(() {
                        egypt = val;
                      });
                    }),
              ],
            ),
            SwitchListTile(
                title: Text("Cairo"),
                subtitle: Text("Egypt"),
                secondary: Icon(Icons.flag),
                selected: true,
                activeColor: Colors.red,
                activeTrackColor: Colors.blue,
                inactiveThumbColor: Colors.black,
                inactiveTrackColor: Colors.black,
                value: cairo,
                onChanged: (val) {
                  setState(() {
                    cairo = val;
                  });
                }),
            Row(
              children: [
                Text("Test CheckBox"),
                Checkbox(
                    value: fastFood,
                    onChanged: (val) {
                      setState(() {
                        fastFood = val!;
                      });
                    })
              ],
            ),
            CheckboxListTile(
                title: Text("Cairo"),
                subtitle: Text("Egypt"),
                secondary: Icon(Icons.flag),
                selected: true,
                activeColor: Colors.red,
                checkColor: Colors.yellow,
                value: club,
                onChanged: (val) {
                  setState(() {
                    club = val!;
                  });
                }),
            Row(
              children: [
                Text("Male"),
                Radio(
                    value: "Male",
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val!;
                      });
                    })
              ],
            ),
            Row(
              children: [
                Text("Female"),
                Radio(
                    value: "Female",
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val!;
                      });
                    })
              ],
            ),
            RadioListTile(
                title: Text("Liver Pool"),
                value: "Liver",
                groupValue: foot,
                onChanged: (val) {
                  setState(() {
                    foot = val;
                  });
                }),
            DropdownButton(
              hint: Text("Choose Name"),
              dropdownColor: Colors.cyan,
              items: ["Yassin", "Ahmed", "Mohamed", "Mahmoud"]
                  .map((e) => DropdownMenuItem(child: Text("$e"), value: e))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  name = val;
                });
              },
              value: name,
            )
          ],
        ),
      ),
    );
  }
}

class TestAlert extends StatefulWidget {
  const TestAlert({super.key});

  @override
  State<TestAlert> createState() => _TestAlertState();
}

class _TestAlertState extends State<TestAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                child: Text("Show Alert"),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Alert!"),
                          content: Text("Hello Flutter"),
                        );
                      });
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Alert!"),
                          content: Text("Hello World "),
                          actions: [],
                        );
                      });
                },
                child: Text("Next Alert!")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          titlePadding: EdgeInsets.all(20),
                          contentPadding: EdgeInsets.all(10),
                          shape: Border.all(color: Colors.black, width: 3),
                          title: Text(
                            "Alert!",
                            style: TextStyle(color: Colors.red),
                          ),
                          content: Text(
                            "This Changes may hart your device",
                            style: TextStyle(color: Colors.red),
                          ),
                          actions: [
                            InkWell(
                              onTap: () {
                                print("Ok");
                              },
                              child: Text(
                                "Ok",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  print("Cancel");
                                },
                                child: Text("Cancel",
                                    style: TextStyle(color: Colors.red)))
                          ],
                        );
                      });
                },
                child: Text("Hi"))
          ],
        ),
      ),
    );
  }
}
