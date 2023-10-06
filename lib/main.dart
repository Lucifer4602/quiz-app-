// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, avoid_print, unused_local_variable, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Brain brain = Brain();

void main() {
  runApp(
    Quizer(),
  );
}

class Quizer extends StatelessWidget {
  const Quizer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: MyApp()),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> string = [];
  void checkans(bool userpick) {
    if (brain.isfinished() == true) {
      bool ans = brain.getanswer();
      if (ans == userpick) {
        setState(() {
          string.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        });
      } else {
        setState(() {
          string.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        });
      }
      // Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.")
      //     .show();
      Future.delayed(Duration(seconds: 1), () {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        string = [];
        brain.reset();
      });
    } else {
      bool ans = brain.getanswer();
      if (ans == userpick) {
        setState(() {
          string.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        });
      } else {
        setState(() {
          string.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        });
      }
      brain.nextquestion();
    }
  }

  // List<String> hello = [
  //   'Sunandhit is a gay',
  //   'Sunandhit is a boy',
  //   'Sunandhit is a girl',
  // ];
  // List<bool> bye = [
  //   true,
  //   false,
  //   false,
  // ];
  // List<Questionbank> quizlers = [
  //   Questionbank(q: 'sunandhit is a gay', a: true),
  //   Questionbank(q: 'suanndhit is a boy', a: false),
  //   Questionbank(q: 'sunandhit is a girl', a: false),
  // ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                brain.getquestion(),
                style: TextStyle(color: Colors.white, fontSize: 25.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                checkans(true);
              },
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                checkans(false);
              },
              child: Text(
                'False',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
          ),
        ),
        Row(
          children: string,
        )
      ],
    );
  }
}
