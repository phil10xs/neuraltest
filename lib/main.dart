import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neuraltest/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(context),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
                fit: BoxFit.cover,
            'assets/svg/neural_wel.svg',
          ),
          
          Center(
            child: Text(
              'CONNECTA',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    fontSize: 34,
                    color: Theme.of(context).primaryColor,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ),
          
        ],
      ),
    );
  }
}
