import 'package:flutter/material.dart';
import 'package:recycleit_client/constants/app_colors.dart';
import 'package:recycleit_client/models/item_data.dart';
import 'package:recycleit_client/models/user_data.dart';
import 'package:recycleit_client/presentation/widgets/feed_post.dart';
import 'package:recycleit_client/presentation/widgets/trending_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            pinned: true,
            expandedHeight: 200,
            actions: [
              Center(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.primaryColor)),
                    onPressed: () {},
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    )),
              ),
              Center(
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber[700])),
                    onPressed: () {},
                    child: Icon(
                      Icons.camera,
                      color: Colors.white,
                    )),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.fromLTRB(15, 45, 15, 15),
                child: Container(color: AppColors.primaryColor),
              ),
              title: Container(width: 300, child: const TextField()),
            ),
          ),
          // Container(height: 40),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                  child: Text(
                    'Top Trending Posts',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                    height: (MediaQuery.of(context).size.width) / 1.5,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        TrendingCard(
                            item: Item(
                                user: UserData(name: "Athul John"),
                                images: ["assets/images/trending1.jpg"])),
                        TrendingCard(
                            item: Item(
                                user: UserData(name: "Athul John"),
                                images: ["assets/images/trending2.jpg"])),
                        TrendingCard(
                            item: Item(
                                user: UserData(name: "Athul John"),
                                images: ["assets/images/trending3.jpg"]))
                      ],
                    )),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                  child: Text(
                    'Your Feed',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),

          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) =>
                    FeedPost(
                        item: Item(
                            user: UserData(name: "Athul John"),
                            description:
                                'All these years, I was searching for you...',
                            images: ["assets/images/trending2.jpg"])))),
          )
        ],
      ),
    );
  }
}
