import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PostedPage extends StatefulWidget {
  const PostedPage({super.key});

  // final String title;

  @override
  State<PostedPage> createState() => _PostedPage();
}

class _PostedPage extends State<PostedPage> {
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
    final List<Map<String, dynamic>> item = [
      {
        'title': 'Hit the road - Ray Charles',
        'images':
            'https://cdn.piepme.com/21742/images/s720-piep-h57wyyEo16717232065111671723206511.jpg',
      },
      {
        'title': 'How to grow sun flower',
        'images':
            'https://cdn.piepme.com/1414/images/piep-PIRkJYUb15986107483311598610748331.png',
      },
      {
        'title': 'The best books of all time by Victoc Hugo-an author  ',
        'images':
            'https://cdn.piepme.com/21118/images/s720-piep-44MYCZK716717600608751671760060875.png',
      },
      {
        'title': 'Chú mèo máy đến từ tương lai',
        'images':
            'https://cdn.piepme.com/2599/images/s720-piep-TvDlZHpA16717801091331671780109133.jpg',
      },
      {
        'title': 'Chú mèo máy đến từ tương lai',
        'images':
            'https://cdn.piepme.com/17071/images/s720-piep-LnpvXoOk16716652125501671665212550.jpg',
      },
      {
        'title': 'The best books of all time by Victoc Hugo-an author',
        'images':
            'https://cdn.piepme.com/2599/images/s720-piep-Vjc4A3ms16708194842441670819484244.jpg',
      },
      {
        'title': 'Mọi thứ sẽ ổn thôi',
        'images':
            'https://cdn.piepme.com/24349/images/s720-piep-yTihJkgS16717197540471671719754047.jpg',
      }
    ];

    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),

      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 103,
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.chevron_left,
                    size: 30,
                  ),
                  onPressed: () => Navigator.of(context).pop()),
              Container(
                child: Text('Posted',
                    style: GoogleFonts.beVietnamPro(
                        textStyle: const TextStyle(color: Color(0xffffffff)),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
        ),
        flexibleSpace: const FlexibleSpaceBar(
            background: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xfff3475b), Color(0xfff1884d)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)))),
      ),
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        margin: const EdgeInsets.only(left: 12, right: 12, top: 20),
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            staggeredTileBuilder: (index) =>
                StaggeredTile.count(1, index.isEven ? 1.3 : 1.2),
            itemCount: item.length,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
                  onTap: () {
                    print('aaaaaa');
                  },
                  child: Container(
                    height: double.infinity,
                    width: 180,
                    margin: const EdgeInsets.only(top: 0),
                    decoration: BoxDecoration(
                        boxShadow: const [
                          // ignore: prefer_const_constructors
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            spreadRadius: 3,
                            blurRadius: 10,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.network(
                                "${item.elementAt(index)['images']}",
                                width: 212,
                                height: 90,
                                fit: BoxFit.cover,
                              )),
                          Container(
                            width: 200,
                            padding: const EdgeInsets.all(8),
                            child: Column(children: [
                              Text("${item.elementAt(index)['title']}",
                                  maxLines: 4,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.beVietnamPro(
                                      textStyle: const TextStyle(
                                          color: Color(0xff000000)),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold))
                            ]),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 0),
                            padding: const EdgeInsets.only(left: 8),
                            alignment: Alignment.centerLeft,
                            child: const Text('5 phút trước',
                                style: TextStyle(
                                    color: Color(0xff686868),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                              padding: const EdgeInsets.only(left: 8, top: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Row(
                                    children: const [
                                      Icon(
                                        Icons.favorite,
                                        color: Color(0xfff3495b),
                                      ),
                                      Text(
                                        '50',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )),
                                  Expanded(
                                      child: Row(
                                    children: const [
                                      Icon(
                                        Icons.comment_rounded,
                                        color: Color(0xff000000),
                                      ),
                                      Text(
                                        '100',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ))

                                  // ignore: unnecessary_new
                                ],
                              )),
                        ]),
                  ),
                )),
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
