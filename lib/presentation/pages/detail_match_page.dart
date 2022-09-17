import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:iconly/iconly.dart';

class DetailMatchPage extends StatelessWidget {
  const DetailMatchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            cardLiveScore(context),
            const SizedBox(height: 20),
            label(context),
            const SizedBox(height: 20),
            standing(size),
            const SizedBox(height: 20),
            label2(context),
            const SizedBox(height: 20),
            matchCardItem(context),
          ],
        ),
      ),
    );
  }

  Widget cardLiveScore(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                worldCupColor,
                backgroundColorBlack,
              ],
            ),
          ),
        ),
        SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 16),
            width: double.infinity,
            child: Text(
              'FIFA World Cup',
              textAlign: TextAlign.center,
              style: kHeading5.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
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
                color: primaryColor,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 140, left: 20, right: 20),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backgroundColorWhite,
            boxShadow: [
              boxShadow,
            ],
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Al Bayt Stadium',
                  style: kHeading5.copyWith(
                    fontSize: 15,
                    fontWeight: semibold,
                    color: kGrey,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Group Stage: Matchday 1',
                style: kHeading5.copyWith(
                  fontSize: 13,
                  fontWeight: regular,
                  color: kGrey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/senegal.png',
                          width: 80,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Senegal',
                          overflow: TextOverflow.ellipsis,
                          style: kBodyText.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                            color: backgroundColorBlack,
                          ),
                        ),
                        Text(
                          'Home',
                          style: kBodyText.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                            color: kGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '0 : 0',
                        style: kHeading5.copyWith(
                          fontSize: 36,
                          color: backgroundColorBlack,
                          fontWeight: bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFFFFE2E2),
                        ),
                        child: Text(
                          'In Play',
                          style: kHeading5.copyWith(
                            color: const Color(0xFFFF5C5C),
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/netherland.png',
                          width: 80,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Netherland',
                          overflow: TextOverflow.ellipsis,
                          style: kBodyText.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                            color: backgroundColorBlack,
                          ),
                        ),
                        Text(
                          'Away',
                          style: kBodyText.copyWith(
                            fontSize: 12,
                            fontWeight: light,
                            color: kGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget label(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'Standing in Grup A',
        textAlign: TextAlign.start,
        style: kHeading6.copyWith(
          color: backgroundColorBlack,
          fontWeight: semibold,
        ),
      ),
    );
  }

  Widget label2(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'All Match in Grup A',
        textAlign: TextAlign.start,
        style: kHeading6.copyWith(
          color: backgroundColorBlack,
          fontWeight: semibold,
        ),
      ),
    );
  }

  Widget standing(Size size) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kDavysGrey,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'GROUP A',
                  style: kSubtitle.copyWith(
                    fontWeight: semibold,
                    fontSize: 16,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'P',
                        style: kSubtitle.copyWith(
                          fontWeight: semibold,
                          fontSize: 14,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'W',
                        style: kSubtitle.copyWith(
                          fontWeight: semibold,
                          fontSize: 14,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'D',
                        style: kSubtitle.copyWith(
                          fontWeight: semibold,
                          fontSize: 14,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'L',
                        style: kSubtitle.copyWith(
                          fontWeight: semibold,
                          fontSize: 14,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Pts',
                        style: kSubtitle.copyWith(
                          fontWeight: semibold,
                          fontSize: 14,
                          color: backgroundColorBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              color: primaryColor,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/qatar.png',
                        height: 20,
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
                            fontWeight: light,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: semibold,
                          fontSize: 14,
                          color: const Color(0xFFFF5C5C),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.black12,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/equador.png',
                        height: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Ecuador',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style: kSubtitle.copyWith(
                            color: backgroundColorBlack,
                            fontWeight: light,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: semibold,
                          fontSize: 14,
                          color: const Color(0xFFFF5C5C),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.black12,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/senegal.png',
                        height: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Senegal',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style: kSubtitle.copyWith(
                            color: backgroundColorBlack,
                            fontWeight: light,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: semibold,
                          fontSize: 14,
                          color: const Color(0xFFFF5C5C),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.black12,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/netherland.png',
                        height: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          'Netherland',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style: kSubtitle.copyWith(
                            color: backgroundColorBlack,
                            fontWeight: light,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: light,
                          fontSize: 13,
                          color: backgroundColorBlack,
                        ),
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        '0',
                        style: kSubtitle.copyWith(
                          fontWeight: semibold,
                          fontSize: 14,
                          color: const Color(0xFFFF5C5C),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget matchCardItem(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/detail-match'),
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
