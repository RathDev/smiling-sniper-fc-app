import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/config/app_color.dart';
import 'package:smiling_sniper_fc_app/model/images/list_of_image.dart';
import 'package:smiling_sniper_fc_app/ui/view/our_player/player_detail.dart';
import 'package:smiling_sniper_fc_app/widget/player_card/player_card.dart';

class OurPlayer extends StatefulWidget {
  @override
  _OurPlayerState createState() => _OurPlayerState();
}

class _OurPlayerState extends State<OurPlayer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Player of SLS FC',
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: AppColor.light,
                  fontWeight: FontWeight.w400,
                ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            color: Colors.blueGrey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'LWF',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                        color: AppColor.light, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  height: 330,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfImageData.length,
                    itemBuilder: (context, index) {
                      ListOfImage items = listOfImageData[index];
                      return PlayerCard(
                        imgUrl: items.imgUrl,
                        name: items.name,
                        number: items.number,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Defender',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: AppColor.light,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                Container(
                  height: 330,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfImageData.length,
                    itemBuilder: (context, index) {
                      ListOfImage items = listOfImageData[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PlayerDetail(
                                imgUrl: items.imgUrl,
                                playerWeight: items.playerWeight,
                                playerHeight: items.playerHeight,
                                dateOfBirth: items.dateOfBirth,
                                age: items.age,
                                position: items.position,
                                name: items.name,
                                number: items.number,

                              ),
                            ),
                          );
                        },
                        child: PlayerCard(
                          imgUrl: items.imgUrl,
                          name: items.name,
                          number: items.number,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'CMF',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: AppColor.light,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                Container(
                  height: 330,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfImageData.length,
                    itemBuilder: (context, index) {
                      ListOfImage items = listOfImageData[index];
                      return PlayerCard(
                        imgUrl: items.imgUrl,
                        name: items.name,
                        number: items.number,
                      );
                    },
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
