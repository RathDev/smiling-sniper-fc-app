import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/widget/slider_image/slider_image.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.deepPurple,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: MyCarouselWithDot(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
