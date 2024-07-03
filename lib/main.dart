import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var no1Controller = TextEditingController();

  var no2Controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculations'),
        ),
        body: Container(
          color: Colors.blue.shade100,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var sum = no1 + no2;
                            result = "The sum of $no1 and $no2 is: $sum";
                            setState(() {});
                          },
                          child: Text('Add'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var diff = no1 - no2;
                            result =
                                "The Difference between $no1 and $no2 is: $diff";
                            setState(() {});
                          },
                          child: Text('Sub'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var Product = no1 * no2;
                            result =
                                "The Product of $no1 and $no2 is: $Product";
                            setState(() {});
                          },
                          child: Text('Mult'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());

                            var div = no1 / no2;
                            result =
                                "The $no1 Can be divided by $no2,: $div times.";
                            setState(() {});
                          },
                          child: Text('Div'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      result,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
