import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/box_shadow.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/models/home/cart_model.dart';
import 'package:fiona_fashion/widgets/custom_inkwell.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartWidget extends StatefulWidget {

  final CartModel cartModel;
  CartWidget({this.cartModel});

  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {

  int _quantity ;
  double _price;

  @override
  void initState(){
    super.initState();
    _quantity = widget.cartModel.quantity;
    _price = widget.cartModel.price;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [CustomBoxShadow],
        color: Colors.white
      ),
      margin: EdgeInsets.symmetric(vertical: 12,horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12)),
            child: Image.asset(widget.cartModel.image,height: 150,width: Get.width*0.35,fit: BoxFit.fill,),
          ),
          SizedBox(width: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(widget.cartModel.name,style: CustomTextStyle.boldMediumTextStyle(),),
                SizedBox(height: 3,),
                Row(
                      children: [
                        CustomTextWidget("Size: ",style: CustomTextStyle.smallTextStyle1(),),
                        CustomTextWidget(widget.cartModel.size,style: CustomTextStyle.smallTextStyle1(),),
                      ],
                    ),
                SizedBox(height:3),

                CustomTextWidget(_price.toString(),style: CustomTextStyle.boldMediumTextStyle(),),
                SizedBox(height: 3,),

                Row(
                  children: [
                    CustomInkWell(
                      onTap: (){
                        _quantity > 0 ?
                            setState((){
                              _quantity--;
                              _price = _price * _quantity ;
                            }) : print("");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryDarkOrange
                        ),
                        padding: EdgeInsets.all(6),
                        child: CustomTextWidget("-",style: CustomTextStyle.bigTextStyle(color: Colors.white),),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CustomTextWidget(_quantity.toString()),
                    ),

                    CustomInkWell(
                      onTap: (){
                        setState((){
                          _quantity++;
                          _price = widget.cartModel.price * _quantity ;
                        }) ;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryDarkOrange
                        ),
                        padding: EdgeInsets.all(6),
                        child: CustomTextWidget("+",style: CustomTextStyle.bigTextStyle(color: Colors.white),),
                      ),
                    ),

                  ],
                )

              ],
            ),
          )
        ],
      )

    );
  }
}
