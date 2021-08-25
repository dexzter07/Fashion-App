import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/models/home/size_model.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeWidget extends StatelessWidget {
  final SizeModel text;
  final SizeModel color;
  SizeWidget({this.text,this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color:Colors.grey[200],
          border: Border.all(color: Colors.deepOrangeAccent,width: 2)
      ),
      child: Center(child: CustomTextWidget(text.text,style: CustomTextStyle.boldTextStyle(),)),
    );
  }
}
