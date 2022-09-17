import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:iconly/iconly.dart';

class StandingPage extends StatelessWidget {
  const StandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: customTabBar(),
          body: TabBarView(
            children: <Widget>[
              content(size, context),
            ],
          ),
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
            color: worldCupColor,
            borderRadius: BorderRadius.circular(30),
          ),
          labelColor: backgroundColorWhite,
          unselectedLabelColor: worldCupColor,
          // isScrollable: true,
          tabs: const [
            Tab(
              text: 'FIFA World Cup',
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
          'Standings',
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

  Widget content(Size size, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: ListView(
        children: [
          label(context),
          const SizedBox(
            height: 10,
          ),
          standing(size),
          standing(size),
        ],
      ),
    );
  }

  Widget standing(Size size) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
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
                    color: worldCupColor,
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
              color: worldCupColor,
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
}
