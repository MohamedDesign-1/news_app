import 'package:flutter/material.dart';

class CategoryCards extends StatelessWidget {
  String imageAsset ;
  String titleOfCard ;
  CategoryCards({Key? key , required this.imageAsset , required this.titleOfCard }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      height: 120,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.orange,
          image: DecorationImage(
              image: AssetImage(imageAsset),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black87 , BlendMode.screen)
          )
      ),
      child:Center(
        child: Text(titleOfCard , style: TextStyle(
          color: Colors.white ,
          fontSize:  20,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
