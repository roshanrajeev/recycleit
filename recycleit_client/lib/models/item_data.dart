import 'package:recycleit_client/models/user_data.dart';

class Item {
  List<String> images = [];
  UserData user;
  String description = '';
  List<String> usedItems = [];
  int likeCount = 0, buildCount = 0;

  Item(
      {this.description = '',
      required this.user,
      required this.images,
      this.buildCount = 0,
      this.likeCount = 0,
      this.usedItems = const []});
}
