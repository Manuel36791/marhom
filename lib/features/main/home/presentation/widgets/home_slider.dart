import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:marhom/features/main/home/presentation/widgets/slider_container.dart';

import '../../../../../core/utils/dimensions.dart';
import '../../domain/entities/slider_entity.dart';

class HomeSlider extends StatelessWidget {
  final List<SlidersEntity> sliders;
  const HomeSlider({super.key, required this.sliders});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: sliders.map((e) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.p8),
              child: SliderContainer(
                  image: e.slider!
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        // height: 127,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 30),
        autoPlayAnimationDuration:
        const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),);
  }
}
