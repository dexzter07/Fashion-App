import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/models/home/cart_model.dart';
import 'package:fiona_fashion/views/checkout/address.dart';
import 'package:fiona_fashion/widgets/cart_widget.dart';
import 'package:fiona_fashion/widgets/custom_appbar.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:fiona_fashion/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  List<CartModel> _cartList = [
    CartModel(image: "assets/images/shirt.jpg",name: "Denim Shirt",size: "X",quantity: 1,price: 1999),
    CartModel(image: "assets/images/pants.jpg",name: "Levis Pants",size: "XL",quantity: 3,price: 1233),
    CartModel(image: "assets/images/shoes.jpg",name: "Addidas Shoes",size: "S",quantity: 2,price: 445),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [

            CustomAppBar(title: "My Cart",),
            
            ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: _cartList.length,
                itemBuilder: (context,index){
                  return CartWidget(cartModel: _cartList[index],);
                }
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(width:200,child: CustomTextWidget("Delivery Charges",style: CustomTextStyle.boldMediumTextStyle(color: Colors.grey),)),
                      CustomTextWidget("Rs 50",style: CustomTextStyle.boldMediumTextStyle(color: Colors.grey),),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Container(width:200,child: CustomTextWidget("Discount",style: CustomTextStyle.boldMediumTextStyle(color: Colors.grey),)),
                      CustomTextWidget("Rs 30",style: CustomTextStyle.boldMediumTextStyle(color: Colors.grey),),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Container(width:200,child: CustomTextWidget("Total",style: CustomTextStyle.boldMediumTextStyle(),)),
                      CustomTextWidget("Rs 12,465.45",style: CustomTextStyle.boldMediumTextStyle(),),
                    ],
                  ),
                  SizedBox(height: 5,),
                ],
              )
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FullWidthButton(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Address()));
                },
                title: "Continue",
              ),
            )

          ],
        ),
      ),
    );
  }
}
