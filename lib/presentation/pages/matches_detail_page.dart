import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:iconly/iconly.dart';

class MatchesDetailPage extends StatefulWidget {
  const MatchesDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MatchesDetailPage> createState() => _MatchesDetailPageState();
}

class _MatchesDetailPageState extends State<MatchesDetailPage> {
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
      return Column(
        children: [
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
        ],
      );
    } else if (dropdownValue == list[1]) {
      return Column(
        children: [
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
        ],
      );
    } else if (dropdownValue == list[2]) {
      return Column(
        children: [
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
        ],
      );
    } else if (dropdownValue == list[3]) {
      return Column(
        children: [
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
        ],
      );
    } else if (dropdownValue == list[4]) {
      return Column(
        children: [
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
        ],
      );
    } else if (dropdownValue == list[5]) {
      return Column(
        children: [
          matchCardItem(),
          matchCardItem(),
          matchCardItem(),
        ],
      );
    } else if (dropdownValue == list[6]) {
      return Column(
        children: [
          matchCardItem(),
          matchCardItem(),
        ],
      );
    } else {
      return Column(
        children: [
          matchCardItem(),
        ],
      );
    }
  }

  Widget matchCardItem() {
    return Container(
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
          const SizedBox(height: 16,),
        ],
      ),
    );
  }
}
