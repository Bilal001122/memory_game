import 'package:flutter/material.dart';
import '../data.dart';
import 'flip_card_game.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF3A6FE2),
                Color(0xFF9E7BF5),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => _list[0].goto,
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: _list[0].primarycolor,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.black45,
                                    spreadRadius: 0.5,
                                    offset: Offset(3, 4))
                              ]),
                        ),
                        Center(
                          child: Container(
                            height: 90,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: _list[0].secomdarycolor,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 4,
                                      color: Colors.black12,
                                      spreadRadius: 0.3,
                                      offset: Offset(
                                        5,
                                        3,
                                      ))
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    _list[0].name,
                                    style: const TextStyle(
                                      color: Color(0xFF3C6FE2),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF3C6FE2),),
                                const Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF3C6FE2),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> genratestar(int no) {
    List<Widget> _icons = [];
    for (int i = 0; i < no; i++) {
      _icons.insert(
          i,
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ));
    }
    return _icons;
  }
}

class Details {
  late String name;
  late Color primarycolor;
  late Color secomdarycolor;
  late Widget goto;
  late int noOfstar;

  Details(
      {required this.name,
      required this.primarycolor,
      required this.secomdarycolor,
      required this.noOfstar,
      required this.goto});
}

List<Details> _list = [
  Details(
      name: "Train Your Brain",
      primarycolor: Colors.white,
      secomdarycolor: Colors.white,
      noOfstar: 2,
      goto: FlipCardGane(Level.Medium)),
];
