import 'package:fiona_fashion/configs/constants/app_constants.dart';
import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/models/home/category_model.dart';
import 'package:fiona_fashion/models/home/product_model.dart';
import 'package:fiona_fashion/widgets/custom_inkwell.dart';
import 'package:fiona_fashion/widgets/custom_sliver_grid_delegate.dart';
import 'package:fiona_fashion/widgets/custom_text_field.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:fiona_fashion/widgets/product_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<ProductModel> _productList = [
    ProductModel(imageUrl: "assets/images/pants.jpg",title: "Denim Jeans ",subTitle: "Pants",),
    ProductModel(imageUrl: "assets/images/shoes.jpg",title: "Air Jordon Shoe",subTitle: "Shoes",),
    ProductModel(imageUrl: "assets/images/goun.jpg",title: "Loue Vateon Goun",subTitle: "Goun",),
    ProductModel(imageUrl: "assets/images/shirt.jpg",title: "Blue Shirt",subTitle: "Shirt",),
    ProductModel(imageUrl: "assets/images/onepiece.jpeg",title: "Van Hausen OnePiece ads adas dasd",subTitle: "One Piece",),
    ProductModel(imageUrl: "assets/images/tshirt.jpg",title: "H&M T-Shirt",subTitle: "T-shirt",),
  ];

  List<CategoryModel> _categoryList = [
    CategoryModel(image: "assets/images/tshirt1.png",title: "T-Shirt"),
    CategoryModel(image: "assets/images/goun1.png",title: "Goun"),
    CategoryModel(image: "assets/images/shoes1.png",title: "Shoes"),
    CategoryModel(image: "assets/images/coat.png",title: "Coat"),
    CategoryModel(image: "assets/images/shorts.png",title: "Shorts"),
    CategoryModel(image: "assets/images/pants1.png",title: "Pants"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
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

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextWidget(
                        "Hello, User",
                        style: CustomTextStyle.mediumTextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 10,),
                      Lottie.asset("assets/animations/hello2.json",height: 80)
                    ],
                  ),

                  CustomTextWidget(
                    "Find cool products",
                    style: CustomTextStyle.ultraBoldTextStyle1(color: Colors.white,letterSpacing: 2),
                  ),
                  CustomTextWidget(
                    "that fit your style",
                    style: CustomTextStyle.ultraBoldTextStyle1(color: Colors.white,letterSpacing: 2),

                  ),
                  SizedBox(height: 20,),

                  CustomTextFieldWithIcon(
                    hintText: "Search Products",
                    icon: Icon(Icons.search,color: Colors.white,),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  SizedBox(height: 30,),


                ],
              ),
            ),

            SizedBox(height: 20,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    "Category",
                    style: CustomTextStyle.boldMediumTextStyle(
                        color: AppColors.textDarkColor),
                  ),
                  CustomInkWell(
                      onTap: () {},
                      child: CustomTextWidget(
                        "See All",
                        style: CustomTextStyle.mediumTextStyle(color: AppColors.primaryDarkOrange),
                      )),
                ],
              ),
            ),
            SizedBox(height: 5),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _categoryList.map((e) => CategoryWidget(categoryModel: e,)).toList()
              ),
            ),
            SizedBox(height: 10,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextWidget(
                    "Products Promo",
                    style: CustomTextStyle.boldMediumTextStyle(
                        color: AppColors.textDarkColor),
                  ),
                  CustomInkWell(
                      onTap: () {},
                      child: CustomTextWidget(
                        "See All",
                        style: CustomTextStyle.mediumTextStyle(color: AppColors.primaryDarkOrange),
                      )),
                ],
              ),
            ),

            GridView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                  crossAxisCount: 2,
                  height: 230.0,
                ),
                itemCount: _productList.length,
                itemBuilder: (context,index){
                  return ProductWidget(productModel: _productList[index],);
                }
            )
          ],
        ),
      ),
    );
  }
}


class CategoryWidget extends StatelessWidget {

  final CategoryModel categoryModel;
  CategoryWidget({this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(categoryModel.image),
          ),
          SizedBox(height: 7,),
          CustomTextWidget(categoryModel.title,style: CustomTextStyle.mediumTextStyle(),)
        ],
      ),
    );
  }
}
