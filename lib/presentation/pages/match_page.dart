import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:futoboru/common/state_enum.dart';
import 'package:futoboru/presentation/provider/all_matches_notifier.dart';
import 'package:futoboru/presentation/widgets/matches_card.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({Key? key}) : super(key: key);

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<AllMatchesNotifier>(context, listen: false)
            .fetchAllMatches());
  }

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
          renderDataFromApi()
        ],
      ),
    );
  }

  Widget renderDataFromApi() {
    return Consumer<AllMatchesNotifier>(
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
              final matches = data.matches[index];
              return MacthesCard(matches);
            },
            itemCount: data.matches.length,
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

  Widget contentCL(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.settings,
              size: 200,
              color: kGrey,
            ),
            Text(
              'This feature is under development',
              textAlign: TextAlign.center,
              style: kHeading5.copyWith(
                color: kGrey,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
