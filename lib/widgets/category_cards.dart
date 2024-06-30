import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';

class CategoryCards extends StatelessWidget {
  CategoryCards({Key? key, required this.category}) : super(key: key);
  final CategoryModel category ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 120,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.orange,
          image: DecorationImage(
              image: AssetImage(category.imageAssetsUrl),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black87 , BlendMode.screen)
          )
      ),
      child:Center(
        child: Text( category.categoryName , style: TextStyle(
          color: Colors.white ,
          fontSize:  20,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
