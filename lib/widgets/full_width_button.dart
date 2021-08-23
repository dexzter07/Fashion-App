import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class FullWidthButton extends StatelessWidget {
  
  final String title;
  final Color color;
  final Function onTap;
  final BorderRadius borderRadius;
  final Border border;
  final EdgeInsets padding;
  final EdgeInsets maring;
  
  FullWidthButton({this.title,this.color,this.onTap,this.borderRadius,this.border,this.padding,this.maring});
  
  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: onTap,
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: borderRadius == null ? BorderRadius.circular(30) : borderRadius,
          border:  border == null ? null : border ,
          color: color?? AppColors.primaryDarkOrange
        ),
        padding: padding ?? EdgeInsets.symmetric(vertical: 20),
        margin: maring ?? EdgeInsets.symmetric(horizontal: 0,vertical: 10),
        child: Center(child: Text(title,style: CustomTextStyle.appBarTextStyle(color:border == null ? Colors.white : Colors.grey,fontFamily: "PoppinsRegular"),),),
      ),
    );
  }
}



class FullWidthButtonWithIcon extends StatelessWidget {

  final String title;
  final Icon icon;
  final Color color;
  final Function onTap;
  final BorderRadius borderRadius;
  final Border border;
  final EdgeInsets padding;
  final EdgeInsets maring;

  FullWidthButtonWithIcon({this.title,this.color,this.onTap,this.borderRadius,this.border,this.padding,this.maring,this.icon});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: onTap,
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: borderRadius == null ? BorderRadius.circular(20) : borderRadius,
            border:  border == null ? null : border ,
            color: color
        ),
        padding: padding ?? EdgeInsets.symmetric(vertical: 22),
        margin: maring ?? EdgeInsets.symmetric(horizontal: 0,vertical: 10),
        child:Row(
          children: [
            Expanded(child: Text(title,style: CustomTextStyle.boldMediumTextStyle(color:border == null ? Colors.white : Colors.grey),)),
            icon
          ],
        ),
      ),
    );
  }
}