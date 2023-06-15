import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var larguraDividoPorDois = MediaQuery.of(context).size.width / 2;
    var alturaPagina = MediaQuery.of(context).size.height;
    double alturacabecalhoPagina = 180;
    double larguracabecalhoPagina = 180;
    alturaPagina = alturaPagina - alturacabecalhoPagina;
    print(alturaPagina);

    return Scaffold(
        body: Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: alturacabecalhoPagina,
                          height: larguracabecalhoPagina,
                          decoration: const BoxDecoration(
                            color: const Color.fromRGBO(245, 245, 241, 0.992),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: const Text(
                            "Felipe",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          child: const Text(
                            "Pestana",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: larguraDividoPorDois,
                  height: alturaPagina,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(80, 200, 5, 5),
                    child: Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sobre Mim",
                              style: GoogleFonts.tauri(
                                  color: Colors.blue,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              "Olá meu nome é Felipe Pestana, sou Formado em Análise e Desenvolvimento de Sistemas pela FATEC e atuo na área de desenvolvimento Web há mais de 3 anos, sou mais focado na parte do Back-End, sempre estou buscando novos desafios e novos conhencimentos. Meu hobby é curtir os momentos em familia, jogar video-game, assistir futebol, e VAI CORINTHIANS!!!",
                              style: GoogleFonts.tauri(
                                  color: Colors.white,
                                  fontSize: 20,
                                  textStyle:
                                      TextStyle(overflow: TextOverflow.clip)),
                            ),
                          ],
                        )),
                  ),
                ),
                Container(
                  width: larguraDividoPorDois,
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  height: 500,
                  child:
                      Lottie.asset("imagens/animation/animation_develop.json"),
                )
              ],
            ),
            Container(
              height: alturaPagina,
              padding: EdgeInsets.fromLTRB(80, 200, 5, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Habilidades",
                    style: GoogleFonts.tauri(
                        color: Colors.blue,
                        fontSize: 40,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.fromLTRB(200, 0, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          width: 400,
                          height: 50,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                          width: 20,
                        ),
                        Container(
                          width: 400,
                          height: 50,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Container(
                                child: Text("AAA"),
                              ),
                              Container(
                                child: Text("AAA"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
