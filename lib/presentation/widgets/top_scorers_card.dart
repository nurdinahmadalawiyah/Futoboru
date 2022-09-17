import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futoboru/common/constant.dart';

class TopScorersCard extends StatelessWidget {
  const TopScorersCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: kDavysGrey),
      child: ListTile(
        leading: SvgPicture.asset(
          'assets/user.svg',
          color: worldCupColor,
        ),
        title: Text(
          'Cristiano Ronaldo',
          style: kHeading5.copyWith(
            fontWeight: medium,
            fontSize: 16,
            color: backgroundColorBlack,
          ),
        ),
        subtitle: Text(
          'Portugal',
          style: kHeading5.copyWith(
            fontWeight: regular,
            fontSize: 14,
            color: const Color(0xFF737373),
          ),
        ),
        trailing: Text(
          '10',
          style: kHeading5.copyWith(
            fontWeight: bold,
            fontSize: 26,
            color: backgroundColorBlack,
          ),
        ),
      ),
    );
  }
}
