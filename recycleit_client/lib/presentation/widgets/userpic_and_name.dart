import 'package:flutter/material.dart';
import '/models/user_data.dart';

class UserPicName extends StatelessWidget {
  final UserData user;
  final Color color;
  const UserPicName(this.user, {this.color = Colors.black, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: user.image == null
              ? CircleAvatar(
                  backgroundImage: AssetImage('assets/images/trending2.jpg'))
              : CircleAvatar(backgroundImage: NetworkImage(user.image!)),
        ),
        Expanded(
          flex: 3,
          child: Text(
            user.name,
            style: TextStyle(color: color),
          ),
        )
      ],
    );
  }
}
