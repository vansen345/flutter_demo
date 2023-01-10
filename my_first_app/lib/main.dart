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
  bool _search = false;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    const height = 1000 / 1;

    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: const Color(0xfff0f0f0),
        appBar: AppBar(
            primary: true,
            toolbarHeight: 103,
            centerTitle: true,
            flexibleSpace: const FlexibleSpaceBar(
              background: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xfff3475b),
                    Color(0xfff1884d),
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                ),
              ),
            ),
            title: Container(
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                widget.title,
                style: GoogleFonts.beVietnamPro(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const DialogExample(),
              ),
              Container(
                child: const BottomDialog(),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
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
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PostedPage()),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            //children inside bottom appbar
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.home,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.group,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.checklist,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.person,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (_) => FunkyOverlay(),
      ),
      child: const Text('Show Dialog'),
    );
  }
}

class BottomDialog extends StatefulWidget {
  const BottomDialog({super.key});

  @override
  State<BottomDialog> createState() => _BottomDialog();
}

class _BottomDialog extends State<BottomDialog> {
  @override
  void initState() {}

  void _bottomDialog() {
    final List<Map<String, dynamic>> itemShare = [
      {
        'name': 'Quýt',
        'avatar':
            'https://piepme.s3.ap-southeast-1.amazonaws.com/25317/images/avartaoohhay?t=1669262755837'
      },
      {
        'name': 'Dumi',
        'avatar':
            'https://piepme.s3.ap-southeast-1.amazonaws.com/22866/images/avartaoohhay?t=1671545235571'
      },
      {
        'name': 'Jang Jang',
        'avatar':
            'https://piepme.s3.ap-southeast-1.amazonaws.com/23340/images/avartaoohhay?t=1672551352240'
      },
      {
        'name': 'Đức Thành',
        'avatar':
            'https://piepme.s3.ap-southeast-1.amazonaws.com/17872/images/avartaoohhay?t=167285425174810.7'
      },
      {
        'name': 'Hân Hoan',
        'avatar':
            'https://piepme.s3.ap-southeast-1.amazonaws.com/24713/images/avartaoohhay?t=1671121020761'
      },
      {
        'name': 'Nhungnguyen',
        'avatar':
            'https://piepme.s3.ap-southeast-1.amazonaws.com/22788/images/avartaoohhay?t=1654601752078'
      },
      {
        'name': 'Nguyễn Liên',
        'avatar':
            'https://piepme.s3.ap-southeast-1.amazonaws.com/23408/images/avartaoohhay?t=1672279476432'
      },
    ];
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        TextEditingController textController = TextEditingController();
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          height: MediaQuery.of(context).copyWith().size.height * 0.84,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      backgroundColor: Color(0xfff4f4f4),
                      radius: 15,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          Icons.chevron_left,
                          color: Color(0xfff3495b),
                        ),
                        onPressed: null,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Share with',
                      style: GoogleFonts.beVietnamPro(
                          textStyle: const TextStyle(
                            color: Color(0xff000000),
                          ),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      width: 74,
                      // height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xfff4f4f4),
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(
                            color: Color(0xfff3495b),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 44,
                      child: TextField(
                        controller: textController,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff686868),
                        ),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 10.0),
                          fillColor: const Color(0xfff4f4f4),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xfff3495b),
                          ),
                          hintText: "Tìm kiếm",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  textController.clear();
                                },
                              );
                            },
                            child: const Icon(
                              Icons.clear,
                              color: Color(0xfff3495b),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xfff4f4f4), width: 10.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: itemShare.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: Color(0xffe8e8e8),
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('aaaa');
                            },
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 0),
                                  child: CircleAvatar(
                                    radius: 20.0,
                                    backgroundImage: NetworkImage(
                                        "${itemShare.elementAt(index)['avatar']}"),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    "${itemShare.elementAt(index)["name"]}",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.beVietnamPro(
                                        textStyle: const TextStyle(
                                          color: Color(0xff000000),
                                        ),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 30,
                            child: ShaderMask(
                              blendMode: BlendMode.srcATop,
                              shaderCallback: (bounds) => const LinearGradient(
                                      colors: [
                                    Color(0xfff1874d),
                                    Color(0xfff3495b),
                                  ],
                                      begin: Alignment.topRight,
                                      end: Alignment.topLeft)
                                  .createShader(bounds),
                              child: const Icon(Icons.check),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: const Text(
          'Show BottomDialog',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onTap: () {
          _bottomDialog();
        },
      ),
    );
  }
}

class FunkyOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlayState();
}

class FunkyOverlayState extends State<FunkyOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(
      () {
        setState(() {});
      },
    );

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            width: 314,
            height: 287,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 22),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            "https://piepme.s3.ap-southeast-1.amazonaws.com/23822/images/avartaoohhay?t=166020947126187.4"),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12, bottom: 5),
                        child: Text(
                          'You really want to be friend with',
                          style: GoogleFonts.beVietnamPro(
                            textStyle: const TextStyle(
                                color: Color(0xff686868),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),
                      Text(
                        'Doreamon',
                        style: GoogleFonts.beVietnamPro(
                          textStyle: const TextStyle(
                              color: Color(0xfff3495b),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 246,
                          height: 50,
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xfff3495b),
                                  Color(0xfff1874d),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                          ),
                          child: Center(
                            child: Text(
                              'Yes!',
                              style: GoogleFonts.beVietnamPro(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 246,
                          height: 50,
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xfff4f4f4)),
                          child: Center(
                            child: Text(
                              'Refuse!',
                              style: GoogleFonts.beVietnamPro(
                                textStyle: const TextStyle(
                                    color: Color(0xff686868),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
