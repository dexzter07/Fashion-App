import 'package:carousel_pro/carousel_pro.dart';
import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: 479.04,
                height: 251.39,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                child: ListView(children: [
                  Container(
                    height: 451.0,
                    child: Carousel(
                      autoplay: true,
                      images: [
                        InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.white,
                              child: Image.asset("assets/images/pants.jpg", fit: BoxFit.fitWidth,),

                            )),
                        InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.white,
                              child: Image.asset("assets/images/pants.jpg", fit: BoxFit.fitWidth,),

                            )),
                        InkWell(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.white,
                              child: Image.asset("assets/images/pants.jpg", fit: BoxFit.fitWidth,),
                            )),
                      ],
                      dotSize: 8.0,
                      dotColor: Colors.black,
                      dotBgColor: Colors.transparent,
                      indicatorBgPadding: 8.0,
                    ),
                  ),
                ])
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.02,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ))
            ],
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
          )
        ],

      ),
    );
  }
}
