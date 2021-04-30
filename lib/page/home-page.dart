import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  double _currentSliderValue = 166;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                height: 165,
                width: 165,
                decoration: BoxDecoration(
                  color: const Color(0xFF212122),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child:
                              new Image.asset("assets/male.png", height: 70)),
                      Text(
                        "Hombre",
                        style: TextStyle(color: Colors.white54, fontSize: 15),
                      )
                    ])),
            Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                height: 165,
                width: 165,
                decoration: BoxDecoration(
                  color: const Color(0xFF212122),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child:
                              new Image.asset("assets/female.png", height: 70)),
                      Text(
                        "Mujer",
                        style: TextStyle(color: Colors.white54, fontSize: 15),
                      )
                    ])),
          ],
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xFF212122),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 160,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Estatura",
                        style: TextStyle(color: Colors.white38, fontSize: 20),
                      )
                    ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    _currentSliderValue.round().toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text("cm",
                        style: TextStyle(color: Colors.white38, fontSize: 20)),
                  )
                ]),
                SliderTheme(
                  data: SliderThemeData(
                      activeTrackColor: Colors.white,
                      thumbColor: Colors.pink,
                      overlayColor: Colors.pink.withOpacity(0.2),
                      inactiveTrackColor: Colors.white38,
                      valueIndicatorColor: Colors.pink),
                  child: Slider(
                    value: _currentSliderValue,
                    min: 100,
                    max: 250,
                    divisions: 150,
                    label: _currentSliderValue.round().toString() + " cm",
                    onChanged: (double value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    },
                  ),
                )
              ]),
            ),
          ]),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 165,
                width: 165,
                decoration: BoxDecoration(
                  color: const Color(0xFF212122),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Peso",
                              style: TextStyle(
                                  color: Colors.white30, fontSize: 20),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "38",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 50),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 32),
                            ),
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 32),
                            )
                          ])
                    ])),
            Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 165,
                width: 165,
                decoration: BoxDecoration(
                  color: const Color(0xFF212122),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Edad",
                              style: TextStyle(
                                  color: Colors.white30, fontSize: 20),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "38",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 50),
                            )
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 32),
                            ),
                            FloatingActionButton(
                              onPressed: _incrementCounter,
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 32),
                            )
                          ])
                    ])),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
              height: 80,
              color: Colors.pink,
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Calcular",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ])
              ])),
        ),
      ],
    );
  }
}
