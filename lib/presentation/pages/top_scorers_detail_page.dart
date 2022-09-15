import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:futoboru/presentation/widgets/top_scorers_card.dart';
import 'package:iconly/iconly.dart';

class TopScorersDetailPage extends StatefulWidget {
  const TopScorersDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TopScorersDetailPage> createState() => _TopScorersDetailPageState();
}

class _TopScorersDetailPageState extends State<TopScorersDetailPage> {
  static const List<String> list = <String>[
    "Top Scorers",
    "Top Assist",
  ];

  String dropdownValue = list.first;

  Widget renderWidget() {
    if (dropdownValue == list[0]) {
      return const TopScorersCard();
    } else {
      return const TopScorersCard();
    }
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
          renderWidget()
        ],
      ),
    );
  }
}
