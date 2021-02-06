import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarouselWithDot<T> extends StatefulWidget {
  // final List<T> images;
  final double height;
  final double aspectRatio;

  MyCarouselWithDot({
    // this.images,
    this.height = 120,
    this.aspectRatio = 16 / 9,
  });

  @override
  _MyCarouselWithDotState createState() => _MyCarouselWithDotState();
}

class _MyCarouselWithDotState extends State<MyCarouselWithDot> {
  List image = [
    'assets/img/grass-stadium.jpg',
    'assets/img/player-rath.jpg',
    'assets/img/player-phemg.jpg',
    'assets/img/player-ro.jpg',
    'assets/img/player-bunthean.jpg',
    'assets/img/player-jek.jpg',
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: image.length,
          options: CarouselOptions(
            height: widget.height,
            aspectRatio: widget.aspectRatio,
            viewportFraction: 1,
            enlargeCenterPage: true,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          itemBuilder: (context, index) {
            final item = image[index];

            return ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                item,
                fit: BoxFit.fitWidth,
                width: 1000,
              ),
            );
          },
        ),
        Positioned(
          bottom: 0,
          right: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: image.map((img) {
              int index = image.indexOf(img);

              return Container(
                width: 6.0,
                height: 6.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Colors.white
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
