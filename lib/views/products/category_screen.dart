import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/models/home/category_model.dart';
import 'package:fiona_fashion/widgets/custom_appbar.dart';
import 'package:fiona_fashion/widgets/custom_sliver_grid_delegate.dart';
import 'package:fiona_fashion/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {

  List<CategoryModel> _categoryList = [
    CategoryModel(image: "assets/images/tshirt1.png",title: "T-Shirt"),
    CategoryModel(image: "assets/images/goun1.png",title: "Goun"),
    CategoryModel(image: "assets/images/shoes1.png",title: "Shoes"),
    CategoryModel(image: "assets/images/coat.png",title: "Coat"),
    CategoryModel(image: "assets/images/shorts.png",title: "Shorts"),
    CategoryModel(image: "assets/images/pants1.png",title: "Pants"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [

            CustomAppBar(title: "Category",),
            SizedBox(height: 10,),

            Expanded(
              child: GridView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                    crossAxisCount: 2,
                    height: 210.0,
                  ),
                  itemCount: _categoryList.length,
                  itemBuilder: (context,index){
                    return CategoryWidget(categoryModel: _categoryList[index],);
                  }
              ),
            )


          ],
        ),
      ),
    );
  }
}
