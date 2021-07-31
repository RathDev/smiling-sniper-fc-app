import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/model/images/list_of_image_slide.dart';

class MyCarouselWithDot<T> extends StatefulWidget {
  final double height;
  final double aspectRatio;
  MyCarouselWithDot({
    this.height = 120,
    this.aspectRatio = 16 / 9,
  });

  @override
  _MyCarouselWithDotState createState() => _MyCarouselWithDotState();
}

class _MyCarouselWithDotState extends State<MyCarouselWithDot> {

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: listOfImageSlideData.length,
          options: CarouselOptions(
            height: widget.height,
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
            ListOfImageSlide item = listOfImageSlideData[index];

            return ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                item.imgUrl,
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
            children: listOfImageSlideData.map((img) {
              int index = listOfImageSlideData.indexOf(img);

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
