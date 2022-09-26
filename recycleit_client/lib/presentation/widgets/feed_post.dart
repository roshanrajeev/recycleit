import 'package:flutter/material.dart';
import 'package:recycleit_client/constants/app_colors.dart';
import 'package:recycleit_client/models/user_data.dart';
import 'package:recycleit_client/presentation/widgets/post_bottom_panel.dart';
import 'package:recycleit_client/presentation/widgets/userpic_and_name.dart';

import '../../models/item_data.dart';

class FeedPost extends StatelessWidget {
  final Item item;
  const FeedPost({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
        height: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(item.images.isEmpty
                    ? "assets/images/trending1.jpg"
                    : item.images.first))),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0,
                      0.4
                    ],
                    colors: [
                      AppColors.primaryColor,
                      Colors.transparent,
                    ])),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  UserPicName(
                    item.user,
                    color: Colors.white,
                  ),
                  Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        item.description,
                        style: TextStyle(fontSize: 12),
                      )),
                ])),
      ),
      PostBottomPanel(),
      SizedBox(
        height: 15,
      ),
    ]);
  }
}
