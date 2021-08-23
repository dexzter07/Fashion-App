import 'package:fiona_fashion/configs/constants/app_constants.dart';
import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/views/authentication/otp_screen.dart';
import 'package:fiona_fashion/views/authentication/sign_up_screen.dart';
import 'package:fiona_fashion/widgets/custom_inkwell.dart';
import 'package:fiona_fashion/widgets/custom_text_field.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:fiona_fashion/widgets/full_width_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
        child: ListView(
          children: [

            SizedBox(height: Get.height*0.1,),
              Padding(
                padding:  EdgeInsets.only(left: 10),
                child: Lottie.asset("assets/animations/login.json",height: Get.height*0.25,width: Get.width),
              ),
            SizedBox(height: 30,),

              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Center(child: CustomTextWidget("Login",style: CustomTextStyle.boldTextStyle(),)),
                    SizedBox(height: Get.height*0.05,),
                    CustomTextField(hintText: "Enter mobile number",numberButton: true,),

                    SizedBox(height: 20,),
                    FullWidthButton(title: "Request OTP",onTap: (){Get.to(OtpScreen());},),
                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextWidget("Not Registered yet ? ",style: CustomTextStyle.mediumTextStyle()),
                        CustomInkWell(
                            onTap: (){Get.to(SignUpScreen());},
                            child: CustomTextWidget("Create an Account",style: CustomTextStyle.mediumTextStyle(color: AppColors.primaryDarkOrange),))
                      ],
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
