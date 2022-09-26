import 'package:flutter/material.dart';
import 'package:recycleit_client/constants/app_colors.dart';

class PostBottomPanel extends StatelessWidget {
  const PostBottomPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.secondaryColor),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.heart_broken,
                    size: 20,
                  ),
                  Text(
                    '648',
                    style: TextStyle(fontSize: 12),
                  )
                ]),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.secondaryColor),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.handyman,
                    size: 20,
                  ),
                  Text(
                    '223',
                    style: TextStyle(fontSize: 12),
                  )
                ]),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.secondaryColor),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.mode_comment_outlined,
                    size: 20,
                  ),
                  Text(
                    '329',
                    style: TextStyle(fontSize: 12),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
