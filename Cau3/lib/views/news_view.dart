import 'package:flutter/material.dart';
import '../utils/news_data.dart';
import '../widget/article_card_widget.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(24),
          child: Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              'MSSV: 6451071056',
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: NewsData.articles
              .map((article) => ArticleCardWidget(article: article))
              .toList(),
        ),
      ),
    );
  }
}