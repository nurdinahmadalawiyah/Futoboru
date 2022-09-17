import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';

class StandingDetailPage extends StatelessWidget {
  const StandingDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 14,
        ),
        standing(size),
        standing(size),
      ],
    );
  }

  Widget standing(Size size) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14, left: 16, right: 16),
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
  }}
