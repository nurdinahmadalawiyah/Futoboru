import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:futoboru/common/state_enum.dart';
import 'package:futoboru/presentation/provider/finals_notifier.dart';
import 'package:futoboru/presentation/provider/matchday1_notifier.dart';
import 'package:futoboru/presentation/provider/matchday2_notifier.dart';
import 'package:futoboru/presentation/provider/matchday3_notifier.dart';
import 'package:futoboru/presentation/provider/quarter_finals_notifier.dart';
import 'package:futoboru/presentation/provider/roundof16_notifier.dart';
import 'package:futoboru/presentation/provider/semi_finals_notifier.dart';
import 'package:futoboru/presentation/provider/third_place_notifier.dart';
import 'package:futoboru/presentation/widgets/matches_card.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class MatchesDetailPage extends StatefulWidget {
  const MatchesDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MatchesDetailPage> createState() => _MatchesDetailPageState();
}

class _MatchesDetailPageState extends State<MatchesDetailPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      Provider.of<Matchday1Notifier>(context, listen: false).fetchMatchday1();
      Provider.of<Matchday2Notifier>(context, listen: false).fetchMatchday2();
      Provider.of<Matchday3Notifier>(context, listen: false).fetchMatchday3();
      Provider.of<Roundof16Notifier>(context, listen: false).fetchRoundof16();
      Provider.of<QuarterFinalsNotifier>(context, listen: false)
          .fetchQuarterFinals();
      Provider.of<SemiFinalsNotifier>(context, listen: false).fetchSemiFinals();
      Provider.of<ThirdPlaceNotifier>(context, listen: false).fetchThirdPlace();
      Provider.of<FinalNotifier>(context, listen: false).fetchFinal();
    });
  }

  static const List<String> list = <String>[
    "Group Stage: Matchday 1",
    "Group Stage: Matchday 2",
    "Group Stage: Matchday 3",
    "Round of 16",
    "Quater Finals",
    "Semi Finals",
    "Third Place",
    "Final",
  ];

  String dropdownValue = list.first;

  Widget renderWidget() {
    if (dropdownValue == list[0]) {
      return renderDataMatchday1FromApi();
    } else if (dropdownValue == list[1]) {
      return renderDataMatchday2FromApi();
    } else if (dropdownValue == list[2]) {
      return renderDataMatchday3FromApi();
    } else if (dropdownValue == list[3]) {
      return Column(
        children: [renderDataRoundof16FromApi()],
      );
    } else if (dropdownValue == list[4]) {
      return Column(
        children: [renderDataQuaterFinalsFromApi()],
      );
    } else if (dropdownValue == list[5]) {
      return Column(
        children: [renderDataSemiFinalsFromApi()],
      );
    } else if (dropdownValue == list[6]) {
      return Column(
        children: [renderDataThirdPlaceFromApi()],
      );
    } else {
      return Column(
        children: [renderDataFinalFromApi()],
      );
    }
  }

  Widget renderDataMatchday1FromApi() {
    return Consumer<Matchday1Notifier>(
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

  Widget renderDataMatchday2FromApi() {
    return Consumer<Matchday2Notifier>(
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

  Widget renderDataMatchday3FromApi() {
    return Consumer<Matchday3Notifier>(
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

  Widget renderDataRoundof16FromApi() {
    return Consumer<Roundof16Notifier>(
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

  Widget renderDataQuaterFinalsFromApi() {
    return Consumer<QuarterFinalsNotifier>(
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

  Widget renderDataSemiFinalsFromApi() {
    return Consumer<SemiFinalsNotifier>(
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

  Widget renderDataThirdPlaceFromApi() {
    return Consumer<ThirdPlaceNotifier>(
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

  Widget renderDataFinalFromApi() {
    return Consumer<FinalNotifier>(
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                IconlyLight.arrow_down_circle,
                size: 20,
                color: backgroundColorBlack,
              ),
              const SizedBox(
                width: 10,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: dropdownValue,
                  elevation: 1,
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: kSubtitle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                          color: backgroundColorBlack,
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                ),
              ),
            ],
          ),
          renderWidget(),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
