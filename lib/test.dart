import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  var fastFood;
  var country;
  bool Egypt = false;
  bool UAEd = false;
  bool Saudi = false;
  bool liver = false;
  bool real = false;
  bool barca = false;
  bool chelsea = false;
  bool paris = false;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: NamsSearch());
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("Select"),
              Row(
                children: [
                  Text("Egypt"),
                  Checkbox(
                    value: Egypt,
                    onChanged: (valu) {
                      setState(() {
                        Egypt = valu!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text("UAE"),
                  Checkbox(
                    checkColor: Colors.black,
                    activeColor: Colors.red,
                    value: UAEd,
                    onChanged: (valu) {
                      setState(() {
                        UAEd = valu!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text("Saudi"),
                  Checkbox(
                    value: Saudi,
                    onChanged: (valu) {
                      setState(() {
                        Saudi = valu!;
                      });
                    },
                  ),
                ],
              ),
              Text("Favourite Players"),
              CheckboxListTile(
                  isThreeLine: true,
                  controlAffinity: ListTileControlAffinity.trailing,
                  selected: liver,
                  title: Text("Mohammed Salah"),
                  subtitle: Text("Liver Pool"),
                  secondary: Image.network(
                      "https://resources.premierleague.com/premierleague/photos/players/250x250/p118748.png"),
                  value: liver,
                  onChanged: (onChanged) {
                    setState(() {
                      liver = onChanged!;
                    });
                  }),
              CheckboxListTile(
                  isThreeLine: true,
                  title: Text("Messi"),
                  subtitle: Text("Paris"),
                  secondary: Image.network(
                      "https://img.a.transfermarkt.technology/portrait/big/28003-1631171950.jpg?lm=1"),
                  value: paris,
                  onChanged: (onChanged) {
                    setState(() {
                      paris = onChanged!;
                    });
                  }),
              CheckboxListTile(
                  isThreeLine: true,
                  title: Text("Benzema"),
                  subtitle: Text("Real Madrid"),
                  secondary: Image.network(
                      "https://b.fssta.com/uploads/application/soccer/headshots/864.vresize.350.350.medium.50.png"),
                  value: real,
                  onChanged: (onChanged) {
                    setState(() {
                      real = onChanged!;
                    });
                  }),
              CheckboxListTile(
                  isThreeLine: true,
                  title: Text("Ter Stegen"),
                  subtitle: Text("Barclona"),
                  secondary: Image.network(
                      "https://assets.laliga.com/squad/2022/t178/p77318/2048x2225/p77318_t178_2022_0_001_000.png"),
                  value: barca,
                  onChanged: (onChanged) {
                    setState(() {
                      barca = onChanged!;
                    });
                  }),
              CheckboxListTile(
                  isThreeLine: true,
                  title: Text("Mount"),
                  subtitle: Text("Chelsea"),
                  secondary: Image.network(
                      "https://img.chelseafc.com//image/upload/f_auto,q_auto:best,f_auto,q_50,h_860/editorial/people/first-team/2022-23/Mount_profile_avatar_final_22-23.png"),
                  value: chelsea,
                  onChanged: (onChanged) {
                    setState(() {
                      chelsea = onChanged!;
                    });
                  }),
              Center(
                child: DropdownButton(
                  hint: Text("Fast Food"),
                  items: [
                    "Burger",
                    "Crep",
                    "Frinch Frise",
                    "Fried Chicken",
                    "Pizza"
                  ]
                      .map((e) => DropdownMenuItem(child: Text("$e"), value: e))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      fastFood = val;
                    });
                  },
                  value: fastFood,
                ),
              ),
              DropdownButton(
                hint: Text("Select Country"),
                items: ["USA", "UK", "UAE", "EG", "SA", "CA"]
                    .map((e) => DropdownMenuItem(
                          child: Text("Country $e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    country = val;
                  });
                },
                value: country,
              )
            ],
          ),
        ));
  }
}

class NamsSearch extends SearchDelegate {
  List names = ["Ahmed", "Mohamed", "Sayed", "Ali", "Wael", "Hamza"];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query == "";
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
    return Text("Revolution");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filter = names.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemCount: query == "" ? names.length : filter.length,
      itemBuilder: (context, i) {
        return query == "" ? Text("${names[i]}") : Text("${filter[i]}");
      },
    );
  }
}
