import 'package:fiona_fashion/configs/styles/app_colors.dart';
import 'package:fiona_fashion/models/home/product_model.dart';
import 'package:fiona_fashion/widgets/custom_appbar.dart';
import 'package:fiona_fashion/widgets/custom_sliver_grid_delegate.dart';
import 'package:fiona_fashion/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class AllProductScreen extends StatelessWidget {

  final String title;
  AllProductScreen({this.title});

  List<ProductModel> _productList = [
    ProductModel(imageUrl: "assets/images/shoes5.jpg",title: "Addidas",subTitle: "One Piece",),
    ProductModel(imageUrl: "assets/images/shoes1.jpeg",title: "Nike",subTitle: "Pants",),
    ProductModel(imageUrl: "assets/images/shoes2.jpeg",title: "Air Jordon Shoe",subTitle: "Shoes",),
    ProductModel(imageUrl: "assets/images/shoes3.jpg",title: "Reebok",subTitle: "Goun",),
    ProductModel(imageUrl: "assets/images/shoes4.jpg",title: "Bata",subTitle: "Shirt",),
    ProductModel(imageUrl: "assets/images/shoes6.jpg",title: "Hawai",subTitle: "T-shirt",),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [

            CustomAppBar(title: title,),
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
