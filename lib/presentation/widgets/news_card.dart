import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:futoboru/domain/entities/news.dart';
import 'package:futoboru/presentation/pages/article_web_view.dart';
import 'package:intl/intl.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(this.news, {Key? key}) : super(key: key);

  final News news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleWebView(
              url: news.url!,
              title: news.title!,
            ),
          )),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: backgroundColorWhite,
          boxShadow: [boxShadow],
        ),
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: CachedNetworkImage(
                imageUrl: news.urlToImage ?? '-',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news.title ?? '-',
                    style: kHeading6.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                      color: backgroundColorBlack,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${DateFormat.yMMMEd().format(news.publishedAt!)}, ${DateFormat.Hms().format(news.publishedAt!)}',
                    style: kHeading6.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
