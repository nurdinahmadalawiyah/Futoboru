// ignore_for_file: unused_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:futoboru/common/state_enum.dart';
import 'package:futoboru/domain/usecases/get_news.dart';
import 'package:futoboru/presentation/provider/news_list_notifier.dart';
import 'package:futoboru/presentation/widgets/news_card.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => Provider.of<NewsListNotifier>(context, listen: false)
        .fetchTopHeadlinesNews());
  }

  List images = [
    'assets/card_wc.png',
    'assets/card_wc.png',
    'assets/card_wc.png',
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    int index = -1;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            carousel(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((e) {
                index++;
                return indicator(index);
              }).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            label(),
            const SizedBox(
              height: 10,
            ),
            renderDataFromApi(),
          ],
        ),
      ),
    );
  }

  Widget carousel() {
    return CarouselSlider(
      options: CarouselOptions(
          initialPage: 0,
          height: 175,
          autoPlay: true,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              currentIndex = index;
            });
          }),
      items: images
          .map(
            (image) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 175,
              width: MediaQuery.of(context).size.width,
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(image),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget indicator(int index) {
    return Container(
      width: currentIndex == index ? 16 : 4,
      height: 4,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: currentIndex == index ? primaryColor : const Color(0xFFC4C4C4),
      ),
    );
  }

  Widget label() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.local_fire_department_rounded,
                color: primaryColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Top News',
                style: kHeading6.copyWith(
                  color: backgroundColorBlack,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget renderDataFromApi() {
    return Consumer<NewsListNotifier>(
      builder: (context, data, child) {
        if (data.state == RequestState.loading) {
          return const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (data.state == RequestState.loaded) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final news = data.news[index];
              return NewsCard(news);
            },
            itemCount: data.news.length,
          );
        } else {
          return Center(
            key: const Key('error_message'),
            child: Text(data.message),
          );
        }
      },
    );
  }
}
