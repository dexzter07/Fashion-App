import 'package:fiona_fashion/configs/constants/app_constants.dart';
import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/controllers/authentication/otp_controller.dart';
import 'package:fiona_fashion/views/nav_screen.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:fiona_fashion/widgets/full_width_button.dart';
import 'package:fiona_fashion/widgets/otp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';


class OtpScreen extends StatelessWidget {

  final OtpController _otpController = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: ListView(
            children: [

              SizedBox(height: Get.height*0.07,),
              Padding(
                padding:  EdgeInsets.only(left: 10),
                child: Lottie.asset("assets/animations/otp.json",height: Get.height*0.25,width: Get.width),
              ),
              SizedBox(height: 30,),

              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CustomTextWidget("Otp Verification",style: CustomTextStyle.boldTextStyle(),),
                    SizedBox(height: 20,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 15), child: CustomTextWidget("Please enter the 4 digit otp code sent to Your Mobile Number",alignText: true,),),
                    SizedBox(height: Get.height*0.05,),
                    Row(
                      children: [

                        Expanded(child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                            child: OtpTextField(controller: _otpController.otpController1.value,count: 1,)),
                        ),
                        Expanded(child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                            child: OtpTextField(controller: _otpController.otpController2.value,count: 2,)),
                        ),
                        Expanded(child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                            child: OtpTextField(controller: _otpController.otpController3.value,count: 3,)),
                        ),
                        Expanded(child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                            child: OtpTextField(controller: _otpController.otpController4.value,count: 4,)),
                        ),
                      ],
                    ),

                    SizedBox(height: 30,),
                    FullWidthButton(title: "Verify OTP",onTap: (){Get.to(NavScreen());},),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
