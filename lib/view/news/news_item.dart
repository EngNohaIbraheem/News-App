import 'package:flutter/material.dart';

import '../../model/News.dart';

class NewsItem extends StatelessWidget {
  News news;

  NewsItem(this.news);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRect(
            child: Image.network(
              news.urlToImage ?? '',
              height: 200,
              width: double.infinity,
            ),
           ///// borderRadius: BorderRadius.circular(18),
          ),
          Text(news.author ?? ''),
          Text(news.title ?? ''),
          Text(news.publishedAt ?? ''),
        ],
      ),
    );
  }
}