import 'package:fiona_fashion/configs/styles/box_shadow.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/models/home/category_model.dart';
import 'package:fiona_fashion/models/home/product_model.dart';
import 'package:fiona_fashion/views/products/all_products.dart';
import 'package:fiona_fashion/views/products/product_detail_screen.dart';
import 'package:fiona_fashion/widgets/custom_inkwell.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';


class ProductWidget extends StatelessWidget {

  final ProductModel productModel;
  ProductWidget({this.productModel});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context){return DetailPage(); }));
        },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [CustomBoxShadow],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                child: Image.asset(productModel.imageUrl,height: 140,width:200,fit: BoxFit.cover,)),
            SizedBox(height: 8,),
            CustomTextWidget(productModel.title,style: CustomTextStyle.mediumTextStyle(),textOverflow: TextOverflow.ellipsis,),
            CustomTextWidget(productModel.subTitle,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)
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
    return CustomInkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context){return AllProductScreen(title: categoryModel.title,); }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [CustomBoxShadow],
            borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                child: Image.asset(categoryModel.image,height: 140,width:200,fit: BoxFit.cover,)),
            SizedBox(height: 8,),
            CustomTextWidget(categoryModel.title,style: CustomTextStyle.mediumTextStyle(),textOverflow: TextOverflow.ellipsis,),
          ],
        ),
      ),
    );
  }
}