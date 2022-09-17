import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:futoboru/presentation/pages/matches_detail_page.dart';
import 'package:futoboru/presentation/pages/standing_detail_page.dart';
import 'package:futoboru/presentation/pages/top_scorers_detail_page.dart';
import 'package:iconly/iconly.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        body: DetailContent(),
      ),
    );
  }
}

Widget customTabBar() {
  return Container(
    height: 45,
    padding: const EdgeInsets.all(4),
    margin: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: kDavysGrey,
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: TabBar(
      indicator: BoxDecoration(
        color: worldCupColor,
        borderRadius: BorderRadius.circular(30),
      ),
      labelColor: backgroundColorWhite,
      unselectedLabelColor: worldCupColor,
      // isScrollable: true,
      tabs: const [
        Tab(
          text: 'Matches',
        ),
        Tab(
          text: 'Standings',
        ),
        Tab(
          text: 'Top Scorers',
        ),
      ],
    ),
  );
}

class DetailContent extends StatefulWidget {
  const DetailContent({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailContent> createState() => _DetailContentState();
}

class _DetailContentState extends State<DetailContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: screenHeight * 0.4,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // stops: [0.1, 0.8],
              colors: [
                worldCupColor,
                backgroundColorBlack,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'FIFA World Cup Qatar 2022',
                    overflow: TextOverflow.clip,
                    style: kHeading5.copyWith(
                      fontWeight: semibold,
                      fontSize: 26,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/logo_wc.png',
                  width: 150,
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: backgroundColorWhite,
              ),
              width: 40,
              height: 40,
              child: const Icon(
                IconlyLight.arrow_left,
                color: worldCupColor,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 60),
          child: DraggableScrollableSheet(
            initialChildSize: 0.75,
            minChildSize: 0.75,
            maxChildSize: 0.94,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: backgroundColorWhite,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 16),
                        decoration: BoxDecoration(
                          color: const Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 4,
                        width: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customTabBar(),
                    Expanded(
                      child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            controller: scrollController,
                            child: const MatchesDetailPage(),
                          ),
                          SingleChildScrollView(
                            controller: scrollController,
                            child: const StandingDetailPage(),
                          ),
                          SingleChildScrollView(
                            controller: scrollController,
                            child: const TopScorersDetailPage(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
