import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_cards.dart';

class NewsHomePage extends StatelessWidget {
  static const String routeName = 'HomeScreen';
  NewsHomePage({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('News ' , style: TextStyle(
            color: Colors.black87 ,
            fontWeight: FontWeight.bold,
            fontSize: 24
          ),),
          Text('Cloud',style: TextStyle(
            color: Colors.orange ,
            fontWeight: FontWeight.bold,
          ),),
        ],
      ),
    ),
    body:Column(
      children: [
        CategoryCards(imageAsset: 'assets/images/business.avif', titleOfCard: 'Business')
        ],
      ),
    );
  }
}
