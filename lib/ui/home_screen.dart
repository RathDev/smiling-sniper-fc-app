import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/config/app_color.dart';
import 'package:smiling_sniper_fc_app/ui/view/our_player/our_player_screen.dart';
import 'package:smiling_sniper_fc_app/widget/slider_image/slider_image.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String ballIcon = 'assets/img/ball-icons.png';
  final String homeIcon = 'assets/img/home-icons.png';
  final String playerIcon = 'assets/img/player-icons.jpg';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            color: Colors.grey[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCarouselWithDot(),
                SizedBox(
                  height: 12,
                ),
                Card(
                  elevation: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OurPlayer(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                playerIcon,
                                width: 30,
                              ),
                              Text(
                                'Our Player',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(color: AppColor.secondary),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              ballIcon,
                              width: 60,
                            ),
                            Text(
                              'Fixtures',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: AppColor.secondary),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 12,
                      ),
                      Image.asset(
                        ballIcon,
                        width: 200,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset(playerIcon, width: 100),
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset(homeIcon, width: 150),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
