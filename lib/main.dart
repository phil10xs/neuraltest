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
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final screenController = PageController(viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          key: const Key('scroll-plan-newII'),
          scrollDirection: Axis.horizontal,
          onPageChanged: (index) {
          
          },
          controller: screenController,
          children: [
            welcomePage(),
            otherPages(
                path: 'assets/png/conecta_con_cel.png',
                title: 'CONECTA',
                body:
                    'Conecta tus neuro sensores a la aplicación  Neural Trainer y comienza a aumentar tu rendimiento cognitivo.'),
            otherPages(
                path: 'assets/png/entrena_con_cel.png',
                title: 'ENTRENA',
                body:
                    'Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico.'),
            otherPages(
                path: 'assets/png/analiza _con_cel.png',
                title: 'ANALIZA',
                body:
                    'Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.'),
          ]),
    );
  }

  Widget otherPages({String? path, String? title, String? body}) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage(path!),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Text(
                        '#MOVEYOURMIND',
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              fontSize: 20,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                            ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .4,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        title!,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              fontSize: 40,
                              color: Theme.of(context).primaryColor,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        body!,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const Spacer(),
                      Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                            child: Text(
                          'iniciar sesión'.toUpperCase(),
                          style:
                              Theme.of(context).textTheme.bodyText2?.copyWith(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget welcomePage() {
    return Stack(
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
            height: 48,
            width: 171,
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
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                    child: Text(
                  'iniciar sesión'.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText2?.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                )),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
