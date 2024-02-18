import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  Map<int, String> myMap = {
    0: 'lib/images/img1.jpg',
    1: 'lib/images/img2.jpg',
    2: 'lib/images/img3.png',
    3: 'lib/images/img4.jpg',
    4: 'lib/images/img5.jpg'
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ImageViewer'),
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = (currentIndex + 1) % 5;
                });
              },
              child: myMap[currentIndex]!=null? Image.asset(myMap[currentIndex]!):
              SizedBox(height: 20,),
              ),
        )
      ]),
    );
  }
}
