import 'package:fiona_fashion/models/home/carousel_model.dart';
import 'package:flutter/cupertino.dart';
import 'custom_inkwell.dart';

class CustomCarousel extends StatelessWidget {
  final CarouselModel image;
  CustomCarousel({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomInkWell(
          onTap: () {},
          child: Image.asset(image.imageUrl, fit: BoxFit.cover,),
      )
    );
  }
}
