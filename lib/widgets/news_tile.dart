import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key, required this.articleModel}) : super(key: key);
  final ArticleModel articleModel;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articleModel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          articleModel.title!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textDirection: TextDirection.rtl,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          articleModel.subTitle!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.grey,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
