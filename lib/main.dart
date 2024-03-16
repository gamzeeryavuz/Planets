
import 'package:animated_background/animated_background.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:discover_your_home/pages/home_page.dart';
import 'package:discover_your_home/pages/task_page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  var colorizeColors = [
    Color.fromARGB(255, 200, 0, 0),
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 200, 0, 0),
    Color.fromARGB(255, 0, 0, 0),
    Color.fromARGB(255, 200, 0, 0),
  ];

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: AnimatedBackground(
        behaviour: SpaceBehaviour(),
        vsync: this,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: _width * .9,
                height: _height * .2,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      "CRSTY100 Uzay Üssüne Hoşgeldiniz",
                      textStyle: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                      ),

                      colors: colorizeColors,
                      textAlign: TextAlign.center,
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
              ),
              SizedBox(
                height: _height * .04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: _width * .45,
                    height: _height * .08,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 200, 0, 0), borderRadius: BorderRadius.circular(25)),
                    child: FilledButton(
                  style: FilledButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: Color.fromARGB(255, 200, 0, 0),
                  ),
                    onPressed: () async {
                       Navigator.push(context,MaterialPageRoute(builder: (context)=> HomePage()));

                    },
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: _width * .03,
                        ),
                        Icon(Icons.arrow_back_ios),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          "Gezegenlerimiz",
                          style: TextStyle(
                            fontFamily: "MontserratRegular",
                            fontWeight: FontWeight.bold,
                            color : Colors.white,
                            fontSize: _width * .038,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: _width * .05,
                        ),
                      ],
                    ),
                  ),
                  ),
                  SizedBox(
                    width: _width * .08,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: _width * .45,
                    height: _height * .08,
                    decoration: BoxDecoration(color: Color.fromARGB(255, 200, 0, 0), borderRadius: BorderRadius.circular(25)),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Color.fromARGB(255, 200, 0, 0),
                      ),
                      onPressed: () async { 
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> TaskPage()));


                      },
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: _width * .05,
                          ),
                          Text(
                            "Görevlerimiz",
                            style: TextStyle(
                              fontFamily: "MontserratRegular",
                              fontWeight: FontWeight.bold,
                              color : Colors.white,
                              fontSize: _width * .038,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Icon(Icons.arrow_forward_ios_rounded),
                          SizedBox(
                            width: _width * .03,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: _height * .10,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
