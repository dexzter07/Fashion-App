import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class UserProfileComponent extends StatelessWidget {

  String Title;
  Icon icon;
  UserProfileComponent({this.Title,this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          icon,
          SizedBox(width: 10,),
          CustomTextWidget(Title,style: CustomTextStyle.mediumTextStyle(),)
        ],
      ),
    );
  }
}
