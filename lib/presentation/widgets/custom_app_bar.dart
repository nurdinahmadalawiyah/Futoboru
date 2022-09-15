import 'package:flutter/material.dart';
import 'package:futoboru/common/constant.dart';
import 'package:iconly/iconly.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
    preferredSize: const Size.fromHeight(75),
    child: AppBar(
      toolbarHeight: 75,
      centerTitle: false,
      elevation: 0,
      title: Row(
        children: [
          Text(
            'Futo',
            style: kHeading5.copyWith(
              color: backgroundColorBlack,
              fontWeight: semibold,
            ),
          ),
          Text(
            'boru',
            style: kHeading5.copyWith(
              color: primaryColor,
              fontWeight: semibold,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            IconlyLight.search,
            color: backgroundColorBlack,
            size: 30,
          ),
        ), 
        const SizedBox(width: 15,),
      ],
    ),
    );
  }
}
