import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {

  final String title;
  final bool hideBackIcon;
  CustomAppBar({this.title,this.hideBackIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryDarkOrange,
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 12),
      child: Row(
        children: [
          hideBackIcon == true ? Container() : CustomInkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,),
          ),
          SizedBox(width: 15,),
          Text(title,style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsRegular",color: Colors.white),),
        ],
      ),
    );
  }
}




