import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/models/home/product_model.dart';
import 'package:fiona_fashion/widgets/custom_appbar.dart';
import 'package:fiona_fashion/widgets/custom_sliver_grid_delegate.dart';
import 'package:fiona_fashion/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {

  List<ProductModel> _productList = [
    ProductModel(imageUrl: "assets/images/pants.jpg",title: "Blue Jeans Pants",subTitle: "Pants",),
    ProductModel(imageUrl: "assets/images/tshirt.jpg",title: "H&M T-Shirt",subTitle: "T-Shirt",),
    ProductModel(imageUrl: "assets/images/shoes2.jpeg",title: "Air Jordon Shoe",subTitle: "Shoes",),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [

            CustomAppBar(title: "My Favourites",hideBackIcon: true,),
            SizedBox(height: 10,),

            Expanded(
              child: GridView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                    crossAxisCount: 2,
                    height: 230.0,
                  ),
                  itemCount: _productList.length,
                  itemBuilder: (context,index){
                    return ProductWidget(productModel: _productList[index],);
                  }
              ),
            )


          ],
        ),
      ),
    );
  }
}
