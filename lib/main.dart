import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: const Text("Counter App"),
        ),
        body: const Center(
          child: Column(
            children: [
              Text(
                "Welcome to the app",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Buttons(),
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var femalecounter = 0;
  var malecounter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Number of females: $femalecounter"),
          const SizedBox(
            height: 10,
          ),
          Text("Number of males: $malecounter"),
          const SizedBox(
            height: 15,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                femalecounter++;
              });
            },
            child: Text(
              "Females +",
              style: TextStyle(color: Colors.white),
            ),
            elevation: 10,
            color: Colors.pink,
          ),
          const SizedBox(
            height: 15,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                malecounter++;
              });
            },
            child: Text(
              "Males +",
              style: TextStyle(color: Colors.white),
            ),
            elevation: 10,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
