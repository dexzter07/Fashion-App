import 'package:fiona_fashion/configs/constants/app_constants.dart';
import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/views/authentication/login_screen.dart';
import 'package:fiona_fashion/views/profile/privacy_policy.dart';
import 'package:fiona_fashion/widgets/custom_inkwell.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:fiona_fashion/widgets/user_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:launch_review/launch_review.dart';
import 'package:share/share.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height:50,),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/user1.jpg"),
                radius: 60,
              ),
              SizedBox(height: 10,),
              CustomTextWidget("Samir Bhushal",style: CustomTextStyle.boldMediumTextStyle(),),
              CustomTextWidget("+91 9802351222",style: CustomTextStyle.smallTextStyle1(),),
              SizedBox(height: 50,),

              CustomInkWell(
                  onTap: (){
                    Get.bottomSheet(
                      Container(
                        color: AppColors.primaryDarkOrange,
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.call,color: Colors.white,size: 20,),
                                SizedBox(width: 10,),
                                CustomTextWidget("9805440315",style: CustomTextStyle.mediumTextStyle(color: Colors.white),)
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.email,color: Colors.white,size: 20,),
                                SizedBox(width: 10,),
                                CustomTextWidget("support@email.com",style: CustomTextStyle.mediumTextStyle(color: Colors.white),)
                              ],
                            ),
                          ],
                        ),
                      )
                    );
                  },
                  child: UserProfileComponent(Title: "Contact Us",icon: Icon(Icons.phone,color: AppColors.primaryDarkOrange,size: 17,),)),
              CustomInkWell(
                  onTap: (){
                    Share.share(SHAREMESSAGE);
                  },
                  child: UserProfileComponent(Title: "Invite Friends",icon: Icon(Icons.share,color: AppColors.primaryDarkOrange,size: 17,),)),
              CustomInkWell(
                  onTap: (){
                      LaunchReview.launch(androidAppId: "com.gtkbasket");
                  },
                  child: UserProfileComponent(Title: "Rate Us",icon: Icon(Icons.star,color: AppColors.primaryDarkOrange,size: 17,),)),
              CustomInkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){return PrivacyPolicyScreen();}));
                  },
                  child: UserProfileComponent(Title: "Privacy Policy",icon: Icon(Icons.policy,color: AppColors.primaryDarkOrange,size: 17,),)),
              CustomInkWell(
                   //  onTap: (){
                   //    Navigator.push(context, MaterialPageRoute(builder: (context){return HelpSupport();}));
                   // },
                  child: UserProfileComponent(Title: "Help and Support",icon: Icon(Icons.help,color: AppColors.primaryDarkOrange,size: 17,),)),
              CustomInkWell(
                  onTap: (){
                    Get.offAll(LoginScreen());
                  },
                  child: UserProfileComponent(Title: "Logout",icon: Icon(Icons.logout,color: AppColors.primaryDarkOrange,size: 17,),)),

            ],
          ),
        ),
      )
    );
  }
}
