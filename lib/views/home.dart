import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/widgets/custom_inkwell.dart';
import 'package:fiona_fashion/widgets/custom_text_field.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.04,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      "Fiona Fashion",
                      style:
                          CustomTextStyle.appBarTextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: CustomTextWidget(
                  "Hello, User",
                  style: CustomTextStyle.mediumTextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: CustomTextWidget(
                  "Find cool products",
                  style: TextStyle(
                      fontSize: 33,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: "PoppinsBold",
                      letterSpacing: 2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: CustomTextWidget(
                  "fit your style",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: "PoppinsBold",
                      letterSpacing: 2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                child: Material(
                  borderRadius: BorderRadius.circular(5),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    onChanged: (val) {},
                    style: TextStyle(
                      height: 1,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(224, 224, 224, 1))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(224, 224, 224, 1))),
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      hintText: "Search Products",
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Icon(Icons.add, color: AppColors.primaryDarkOrange,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        CustomTextWidget("Hoodie", style: CustomTextStyle.ultraSmallBoldTextStyle(color:Colors.white),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Icon(Icons.add, color: AppColors.primaryDarkOrange,),

                          ),
                        ),
                        SizedBox(height: 10,),
                        CustomTextWidget("Pants", style: CustomTextStyle.ultraSmallBoldTextStyle(color:Colors.white),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Icon(Icons.add, color: AppColors.primaryDarkOrange,),

                          ),
                        ),
                        SizedBox(height: 10,),
                        CustomTextWidget("T-Shirts", style: CustomTextStyle.ultraSmallBoldTextStyle(color:Colors.white),)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Icon(Icons.add, color: AppColors.primaryDarkOrange,),

                          ),
                        ),
                        SizedBox(height: 10,),
                        CustomTextWidget("Bags", style: CustomTextStyle.ultraSmallBoldTextStyle(color:Colors.white),)
                      ],
                    ),
                    CustomInkWell(
                      onTap: (){},
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Icon(Icons.add, color: AppColors.primaryDarkOrange,),

                            ),
                          ),
                          SizedBox(height: 10,),
                          CustomTextWidget("More", style: CustomTextStyle.ultraSmallBoldTextStyle(color:Colors.white),)
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextWidget(
                "Products Promo",
                style: CustomTextStyle.boldTextStyle(
                    color: AppColors.textDarkColor),
              ),
              CustomInkWell(
                  onTap: () {},
                  child: CustomTextWidget(
                    "See All",
                    style: CustomTextStyle.boldTextStyle(
                        color: AppColors.primaryDarkOrange),
                  )),
            ],
          ),
        ),
        GridView.count(
          physics: ScrollPhysics(),
          crossAxisCount: 2,

          shrinkWrap: true,
          childAspectRatio: (itemWidth / itemHeight),
          children: List.generate(
            10,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(2.0),
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/product-1-1.jpg"),
                      fit: BoxFit.fill,
                        height: 200,
                        width: 170,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomTextWidget("BLUE SUIT WITH OVERSIZED BLAZER",style:CustomTextStyle.ultraSmallBoldTextStyle(),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomTextWidget("\$500",style:CustomTextStyle.ultraSmallBoldTextStyle(color: Colors.grey),),
                            CustomTextWidget("\$450",style:CustomTextStyle.ultraSmallBoldTextStyle(color: AppColors.primaryDarkOrange),),

                          ],
                        ),
                      )
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
