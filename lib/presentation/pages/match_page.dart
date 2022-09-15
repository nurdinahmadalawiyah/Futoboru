import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:iconly/iconly.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: customTabBar(),
        body: TabBarView(
          children: <Widget>[
            contentWC(context),
            contentCL(context),
            contentCL(context),
            contentCL(context),
            contentCL(context),
            contentCL(context),
            contentCL(context),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget customTabBar() {
    return AppBar(
      elevation: 0,
      title: Container(
        height: 45,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: kDavysGrey,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: TabBar(
          indicator: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(30),
          ),
          labelColor: backgroundColorWhite,
          unselectedLabelColor: primaryColor,
          isScrollable: true,
          tabs: const [
            Tab(
              text: 'FIFA World Cup',
            ),
            Tab(
              text: 'UEFA Champions League',
            ),
            Tab(
              text: 'English Premier League',
            ),
            Tab(
              text: 'La Liga',
            ),
            Tab(
              text: 'Serie A',
            ),
            Tab(
              text: 'Ligue 1',
            ),
            Tab(
              text: 'Bundesliga',
            ),
          ],
        ),
      ),
    );
  }

  Widget label(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Matches',
          style: kHeading6.copyWith(
            color: backgroundColorBlack,
            fontWeight: semibold,
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/detail'),
          child: Row(
            children: [
              Text(
                'See Detail',
                style: kBodyText.copyWith(
                  color: const Color(0xFF676767),
                  fontWeight: regular,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                IconlyLight.arrow_right_circle,
                color: Color(0xFF676767),
                size: 20,
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget contentWC(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: ListView(
        children: [
          label(context),
          const SizedBox(
            height: 10,
          ),
          matchCardItem(context),
          matchCardItem(context),
          matchCardItem(context),
        ],
      ),
    );
  }

  Widget contentCL(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: ListView(
        children: [
          Text(
            'This feature is under development',
            style: kHeading5.copyWith(color: primaryColor),
          )
        ],
      ),
    );
  }

  Widget matchCardItem(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/detail-match'),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: kDavysGrey, borderRadius: BorderRadius.circular(12)),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'GROUP A',
                style: kSubtitle.copyWith(
                  fontWeight: semibold,
                  fontSize: 16,
                  color: primaryColor,
                ),
              ),
              const Divider(
                color: primaryColor,
                thickness: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/qatar.png',
                                height: 30,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  'Qatar',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.end,
                                  style: kSubtitle.copyWith(
                                    color: backgroundColorBlack,
                                    fontWeight: regular,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/equador.png',
                                height: 30,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  'Equador',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.end,
                                  style: kSubtitle.copyWith(
                                    color: backgroundColorBlack,
                                    fontWeight: regular,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text(
                          '0',
                          style: kHeading5.copyWith(
                            fontSize: 24,
                            fontWeight: semibold,
                            color: backgroundColorBlack,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '0',
                          style: kHeading5.copyWith(
                            fontSize: 24,
                            fontWeight: semibold,
                            color: backgroundColorBlack,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const VerticalDivider(
                      color: primaryColor,
                      thickness: 1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Text(
                          '23.00',
                          style: kSubtitle.copyWith(
                            color: const Color(0xFFFF5C5C),
                            fontWeight: bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          '20 Nov',
                          style: kBodyText.copyWith(
                            color: const Color(0xFF6C6C6C),
                          ),
                        ),
                        Text(
                          'TIMED',
                          style: kBodyText.copyWith(
                            color: const Color(0xFFFFA800),
                            fontWeight: bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
