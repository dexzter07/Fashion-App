import 'package:carousel_pro/carousel_pro.dart';
import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/models/home/carousel_model.dart';
import 'package:fiona_fashion/models/home/size_model.dart';
import 'package:fiona_fashion/widgets/carousel_widget.dart';
import 'package:fiona_fashion/widgets/custom_appbar.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:fiona_fashion/widgets/full_width_button.dart';
import 'package:fiona_fashion/widgets/size_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<CarouselModel> _carouselModel = [
    CarouselModel(imageUrl: "assets/images/pants.jpg"),
    CarouselModel(imageUrl: "assets/images/pants.jpg"),
    CarouselModel(imageUrl: "assets/images/pants.jpg"),

  ];
  List<SizeModel> _sizeModel = [
    SizeModel(text: "S"),
    SizeModel(text: "M"),
    SizeModel(text: "L"),
    SizeModel(text: "XL"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(title: "Product Details",),
          Container(
            width: double.infinity,
            height: 340,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7))),
            child: Carousel(
              autoplay: false,
              images:
                _carouselModel.map((e) => CustomCarousel(image: e,)).toList(),

              dotSize: 8.0,
              dotColor: Colors.black,
              dotBgColor: Colors.transparent,
              indicatorBgPadding: 8.0,
            )
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget("Denim Jeans", style: CustomTextStyle.ultraBoldTextStyle(),),
                CustomTextWidget("\$1200", style: CustomTextStyle.ultraBoldTextStyle(color: AppColors.primaryDarkOrange),)

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              children: [
                Icon(Icons.padding, color: Colors.deepOrangeAccent,size: 33,),
                CustomTextWidget("  Details", style: CustomTextStyle.ultraBoldTextStyle(color: AppColors.textDarkColor),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomTextWidget("In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
              style: CustomTextStyle.mediumTextStyle(),),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              children: [
                Icon(Icons.shopping_bag, color: Colors.deepOrangeAccent,size: 33,),
                CustomTextWidget("  Size Item", style: CustomTextStyle.ultraBoldTextStyle(color: AppColors.textDarkColor),)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _sizeModel.map((e) => SizeWidget(text: e,)).toList()
          ),
          SizedBox(height: 20,),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: FullWidthButton(title: "Add to Cart",onTap: (){},)),
          SizedBox(height: 10,),

        ],

      ),
    );
  }
}
