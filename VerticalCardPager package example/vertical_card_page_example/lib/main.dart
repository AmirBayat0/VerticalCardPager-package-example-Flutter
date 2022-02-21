// ignore_for_file: use_full_hex_values_for_flutter_colors
import 'package:flutter/material.dart';

import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VerticalCard(),
    );
  }
}

class VerticalCard extends StatefulWidget {
  const VerticalCard({Key? key}) : super(key: key);

  @override
  _VerticalCardState createState() => _VerticalCardState();
}

class _VerticalCardState extends State<VerticalCard> {
  final List<String> titles = [
    "MACKBOOK",
    "DELL",
    "HUAWEI",
    "SURFACE",
    "HP",
    "ASUS"
  ];

  final List<Widget> images = [
    ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset(
        "assets/images/mac.jpg",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset(
        "assets/images/dell.jpg",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset(
        "assets/images/huawei.jpg",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset(
        "assets/images/surface.jpg",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset(
        "assets/images/hp.jpg",
        fit: BoxFit.cover,
      ),
    ),
    ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset(
        "assets/images/asus.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ];


/////////////////////////////////////
/// @CodeWithFlexz on Instagram
///
/// AmirBayat0 on Github
/// Programming with Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffdfdfdf),
        appBar: AppBar(
          title: const Text("@CodeWithFlexZ"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 71, 71, 71),
          elevation: 2,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: VerticalCardPager(
                    titles: titles,
                    images: images,
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 241, 241, 241),
                        fontWeight: FontWeight.bold),
                    onPageChanged: (page) {},
                    onSelectedItem: (index) {},
                    initialPage: 3,
                    align: ALIGN.CENTER),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
