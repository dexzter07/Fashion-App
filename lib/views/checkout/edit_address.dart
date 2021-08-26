import 'package:fiona_fashion/configs/styles/custom_text_style.dart';
import 'package:fiona_fashion/widgets/custom_appbar.dart';
import 'package:fiona_fashion/widgets/custom_text_field.dart';
import 'package:fiona_fashion/widgets/custom_text_widget.dart';
import 'package:fiona_fashion/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditAddress extends StatefulWidget {
  @override
  _EditAddressState createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            CustomAppBar(title: "Change Address"),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextWidget(
                      "First Name",
                      style: CustomTextStyle.boldTextStyle(),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextWidget(
                      "Last Name",
                      style: CustomTextStyle.boldTextStyle(),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CustomTextField(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextWidget(
                "Address",
                style: CustomTextStyle.boldTextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextWidget(
                "District",
                style: CustomTextStyle.boldTextStyle(),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey.withOpacity(0.4), width: 2)
              ),
              child: Center(
                child: DropdownButton<String>(
                  
                  isExpanded: true,
                  underline: SizedBox(),
                  hint: CustomTextWidget("  Select",style: CustomTextStyle.mediumTextStyle(),),
                  items: <String>['East','West', "North", "South"]
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextWidget(
                "Alternate Contact No.",
                style: CustomTextStyle.boldTextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                numberButton: true,
                borderRadius: BorderRadius.all(Radius.circular(10)),),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextWidget(
                "Postal Code",
                style: CustomTextStyle.boldTextStyle(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                numberButton: true,
                  borderRadius: BorderRadius.all(Radius.circular(10)),),
            ),
            SizedBox(height: 40,),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: FullWidthButton(title: "Deliver Here",onTap: (){},)),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
