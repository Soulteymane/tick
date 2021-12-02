import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class pubDiapo extends StatefulWidget {
  const pubDiapo({Key? key}) : super(key: key);

  @override
  _pubDiapoState createState() => _pubDiapoState();
}

class _pubDiapoState extends State<pubDiapo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageSlideshow(
        width: double.infinity,
        height: 200,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        onPageChanged: (value) {
          debugPrint('Page changed: $value');
        },
        autoPlayInterval: 3000,
        isLoop: true,
        children: [
          Image.asset(
            'assets/images/1.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/2.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/Messe.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
