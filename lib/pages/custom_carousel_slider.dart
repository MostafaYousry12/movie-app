import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key, required this.imageURL});

  final List<String> imageURL;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: imageURL.map((url) {
          return Builder(
            builder: (context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    url,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          viewportFraction: 1.0,
        ));
  }
}
