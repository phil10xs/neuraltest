import 'package:flutter/material.dart';
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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/png/neuralwel.png'),
              ),
            ),
          ),
          Center(
            child: Container(
              height:45,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/png/neural.png'),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               

                Text(
                  'COMENZÁ A VIVIR TU',
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 20,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                ),

                Text(
                  'NT EXPERIENCE',
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 40,
                        color: Theme.of(context).primaryColor,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  margin:  const EdgeInsets.only(left: 20, right: 20),
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(child: Text('iniciar sesión'.toUpperCase(),  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                   
                        fontWeight: FontWeight.w500,
                      ), )),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
