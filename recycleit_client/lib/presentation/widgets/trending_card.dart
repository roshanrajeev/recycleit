import 'package:flutter/material.dart';
import 'package:recycleit_client/constants/app_colors.dart';
import 'package:recycleit_client/models/user_data.dart';
import 'package:recycleit_client/presentation/widgets/userpic_and_name.dart';

import '../../models/item_data.dart';

class TrendingCard extends StatelessWidget {
  final Item item;
  const TrendingCard({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: (MediaQuery.of(context).size.width - 20) / 1.5,
        height: (MediaQuery.of(context).size.width - 20) / 1.5,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(item.images.isEmpty
                    ? "assets/images/trending1.jpg"
                    : item.images.first))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColors.primaryColor,
                    Colors.transparent,
                    // Colors.transparent,
                    Colors.transparent
                  ])),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: UserPicName(
              item.user,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
