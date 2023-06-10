import 'package:flutter/material.dart';
import 'package:reckoner/Splashh.dart';

void main() {
  runApp(const MyCalApp());
}

class MyCalApp extends StatelessWidget {
  const MyCalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Proj',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int num1 = 0, num2 = 0;
  var result = '';

  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = (num1 + num2).toString();
    });
  }

  sub() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = (num1 - num2).toString();
    });
  }

  mul() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = (num1 * num2).toString();
    });
  }

  div() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = (num1 ~/ num2).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("@Calculator")),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffe14fad),
          Color(0xfff9d423),
        ])),
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: controller1,
                  decoration: InputDecoration(
                      labelText: "Enter the first value",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(23))),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: controller2,
                  decoration: InputDecoration(
                      labelText: "Enter the second value",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(23))),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 47.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                add();
                                controller1.clear();
                                controller2.clear();
                              },
                              child: const Text(
                                "+",
                                style: TextStyle(fontSize: 25),
                              )),
                          const SizedBox(
                            width: 90,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                sub();
                              },
                              child: Text(
                                "-",
                                style: TextStyle(fontSize: 25),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 47.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                mul();
                              },
                              child: const Text(
                                "x",
                                style: TextStyle(fontSize: 25),
                              )),
                          SizedBox(
                            width: 90,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                div();
                              },
                              child: Text(
                                "/",
                                style: TextStyle(fontSize: 25),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                  ],
                ),
                Text(
                  "Result : $result",
                  style: TextStyle(fontSize: 23),
                )
              ],
            ),
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
