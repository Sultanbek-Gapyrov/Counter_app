import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int number = 0;
  void increment() {
    number++;
    setState(() {});
  }

  void decrement() {
    number--;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[600],
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.orange[600],
          title: const Text(
            'Тапшырма 01',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffbdbdbd),
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 147, vertical: 20),
                  child: Text(
                    'Сан: $number',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextButton(
                    onPressed: decrement,
                    style: TextButton.styleFrom(primary: Colors.blue[800]),
                    child: Icon(
                      Icons.remove_circle,
                      size: 60,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.blue[800]),
                    onPressed: increment,
                    child: Icon(
                      Icons.add_circle,
                      size: 60,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
