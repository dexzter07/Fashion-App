import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/views/checkout/edit_address.dart';
import 'package:fiona_fashion/views/success.dart';
import 'package:fiona_fashion/widgets/custom_appbar.dart';
import 'package:fiona_fashion/widgets/custom_inkwell.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:fiona_fashion/widgets/full_width_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(title: "Select Address",),
            SizedBox(height: 20,),
            AddressContainer(),

            Expanded(child: SizedBox(height: 40,)),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: FullWidthButton(title: "Proceed for Payment",onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => OrderSuccess()));

                },)),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

class AddressContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *1,
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.deepOrange[50],
          border: Border.all(color: Colors.grey.withOpacity(0.4), width: 2)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget("Samir Bhusal, ", style: CustomTextStyle.boldTextStyle(),),
          CustomTextWidget("MG Marg, Gangtok, Sikkim, ", style: CustomTextStyle.mediumTextStyle(),),
          CustomTextWidget("737101, ", style: CustomTextStyle.mediumTextStyle(),),
          CustomTextWidget("9876543210", style: CustomTextStyle.mediumTextStyle(),),
          SizedBox(height: 10,),
          CustomInkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => EditAddress()));

            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.deepOrange[100],
                    border: Border.all(color: Colors.deepOrange.withOpacity(0.4), width: 2)
                ),
                child: CustomTextWidget("Edit",style: CustomTextStyle.boldTextStyle(color: AppColors.primaryDarkOrange),)),
          )


        ],
      ),
    );
  }
}
