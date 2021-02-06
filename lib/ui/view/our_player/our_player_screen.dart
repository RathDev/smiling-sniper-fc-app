import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/model/images/list_of_image.dart';
import 'package:smiling_sniper_fc_app/widget/player_card/player_card.dart';

class OurPlayer extends StatefulWidget {
  @override
  _OurPlayerState createState() => _OurPlayerState();
}

class _OurPlayerState extends State<OurPlayer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
           Expanded(
             child: GridView.builder(
               itemCount: ListOfImageData.length,
               gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 3,
                 mainAxisSpacing: 5,
                 childAspectRatio: (width / 6) / (height / 6),
               ),
               itemBuilder: (context,index){
                 ListOfImage items=ListOfImageData[index];
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
    );
  }
}
