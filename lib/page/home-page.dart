import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int edad = 18;
  int peso = 60;
  String sexo = "";
  int codeColorMujer = 0xFF101227;
  int codeColorHombre = 0xFF101227;

  void _incrementEdad() {
    setState(() {
      edad++;
    });
  }

  void _decreasedEdad() {
    setState(() {
      edad--;
    });
  }

  void _decreasedPeso() {
    setState(() {
      peso--;
    });
  }

  void _incrementPeso() {
    setState(() {
      peso++;
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
            GestureDetector(
              onTap: () {
                setState(() {
                  sexo = "Hombre";
                  codeColorHombre = 0xFF1c1d32;
                  codeColorMujer = 0xFF101227;
                });
              },
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 165,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(codeColorHombre),
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
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  sexo = "Mujer";
                  codeColorMujer = 0xFF1c1d32;
                  codeColorHombre = 0xFF101227;
                });
              },
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  height: 165,
                  width: 165,
                  decoration: BoxDecoration(
                    color: Color(codeColorMujer),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: new Image.asset("assets/female.png",
                                height: 70)),
                        Text(
                          "Mujer",
                          style: TextStyle(color: Colors.white54, fontSize: 15),
                        )
                      ])),
            ),
          ],
        ),
        Expanded(
            child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xFF1c1d32),
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
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
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
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  color: const Color(0xFF1c1d32),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Peso",
                            style:
                                TextStyle(color: Colors.white30, fontSize: 20),
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            peso.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50),
                          )
                        ]),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: FloatingActionButton(
                          onPressed: _decreasedPeso,
                          child:
                              Icon(Icons.remove, color: Colors.white, size: 32),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: FloatingActionButton(
                          onPressed: _incrementPeso,
                          child: Icon(Icons.add, color: Colors.white, size: 32),
                        ),
                      )
                    ])
                  ]),
                )),
            Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  color: const Color(0xFF1c1d32),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Edad",
                            style:
                                TextStyle(color: Colors.white30, fontSize: 20),
                          )
                        ]),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            edad.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 50),
                          )
                        ]),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: FloatingActionButton(
                          onPressed: _decreasedEdad,
                          child:
                              Icon(Icons.remove, color: Colors.white, size: 32),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: FloatingActionButton(
                          onPressed: _incrementEdad,
                          child: Icon(Icons.add, color: Colors.white, size: 32),
                        ),
                      )
                    ])
                  ]),
                )),
          ],
        ),
        Container(
            height: 80,
            color: Colors.pink,
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Calcular",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ])
            ])),
      ],
    );
  }
}
