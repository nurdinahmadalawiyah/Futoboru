import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:futoboru/common/constant.dart';
import 'package:futoboru/domain/entities/matches.dart';
import 'package:intl/intl.dart';

class MacthesCard extends StatelessWidget {
  const MacthesCard(this.matches, {Key? key}) : super(key: key);

  final Matches matches;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/detail-match'),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: kDavysGrey,
          borderRadius: BorderRadius.circular(12),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    matches.group!.replaceAll(RegExp('_'), ' ').toTitleCase(),
                    style: kSubtitle.copyWith(
                      fontWeight: semibold,
                      fontSize: 16,
                      color: worldCupColor,
                    ),
                  ),
                  Text(
                    matches.stage!.replaceAll(RegExp('_'), ' ').toTitleCase(),
                    style: kSubtitle.copyWith(
                      fontWeight: regular,
                      fontSize: 12,
                      color: kGrey,
                    ),
                  ),
                ],
              ),
              const Divider(
                color: worldCupColor,
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
                              SizedBox(
                                height: 30,
                                width: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: SvgPicture.network(
                                    matches.homeTeam.crest ?? '-',
                                    fit: BoxFit.cover,
                                    placeholderBuilder:
                                        (BuildContext context) => Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/noimage.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  matches.homeTeam.name ?? 'To be announced',
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
                              SizedBox(
                                height: 30,
                                width: 40,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: SvgPicture.network(
                                    matches.awayTeam.crest ?? '-',
                                    fit: BoxFit.cover,
                                    placeholderBuilder:
                                        (BuildContext context) => Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/noimage.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  matches.awayTeam.name ?? 'To be announced',
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
                          matches.score.fullTime.home ?? '0',
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
                          matches.score.fullTime.home ?? '0',
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
                      color: worldCupColor,
                      thickness: 1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Text(
                          DateFormat.Hm().format(
                            matches.utcDate!.add(
                              const Duration(hours: 7),
                            ),
                          ),
                          style: kSubtitle.copyWith(
                            color: const Color(0xFFFF5C5C),
                            fontWeight: bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          DateFormat.MMMd().format(matches.utcDate!),
                          style: kBodyText.copyWith(
                            color: const Color(0xFF6C6C6C),
                          ),
                        ),
                        Text(
                          matches.status!.replaceAll(RegExp('_'), ' '),
                          style: kBodyText.copyWith(
                            color: setColor(),
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

  setColor() {
    if (matches.status == 'FINISHED') {
      return secondaryColor;
    } else if (matches.status == 'TIMED') {
      return const Color(0xFFFFA800);
    } else if (matches.status == 'IN_PLAY') {
      return const Color(0xFFFF5C5C);
    } else if (matches.status == 'PAUSED') {
      return const Color(0xFFFFA800);
    } else if (matches.status == '') {
      return Colors.red;
    } else {
      return backgroundColorBlack;
    }
  }
}
