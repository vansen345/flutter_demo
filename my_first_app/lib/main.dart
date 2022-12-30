import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'post_page.dart';

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
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Home',
      ),
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
  get index => null;
  // final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // _scrollController.animateTo(_scrollController.position.maxScrollExtent,
    //     duration: const Duration(seconds: 1),
    //     curve: Curves.fastLinearToSlowEaseIn);

    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const height = 1000 / 1;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      appBar: AppBar(
          primary: true,
          toolbarHeight: 103,
          centerTitle: true,
          flexibleSpace: const FlexibleSpaceBar(
            background: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                  Color(0xfff3475b),
                  Color(0xfff1884d),
                ]))),
          ),
          // Here we take the value from the MyHomePage object that was created by
          //
          //
          // the App.build method, and use it to set our appbar title.

          title: Container(
            margin: const EdgeInsets.only(top: 40),
            child: Text(
              widget.title,
              style: GoogleFonts.beVietnamPro(
                  textStyle: const TextStyle(color: Color(0xffffffff)),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )),
      body: Center(
        child: FloatingActionButton(
          child: Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xfff3475b),
                      Color.fromRGBO(241, 136, 77, 1),
                    ])),
            child: const Icon(
              Icons.add,
              size: 40,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PostedPage()),
            );
          },
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Container(
      //     width: 60,
      //     height: 60,
      //     decoration: const BoxDecoration(
      //         shape: BoxShape.circle,
      //         gradient: LinearGradient(
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomRight,
      //           colors: [
      //             Color(0xfff3475b),
      //             Color(0xfff1884d),
      //           ],
      //         )),
      //     child: const Icon(
      //       Icons.add,
      //       size: 40,
      //     ),
      //   ),
      //   onPressed: () {},
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
