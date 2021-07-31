import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/widget/player_card/player_detail_card.dart';
class PlayerDetail extends StatelessWidget {
  final String imgUrl;
  final String number;
  final String name, age, playerHeight, playerWeight, dateOfBirth,position;

  PlayerDetail(
      {
    this.imgUrl,
    this.number,
    this.name,
    this.age,
    this.playerHeight,
    this.playerWeight,
    this.dateOfBirth,
    this.position,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: PlayerDetailCard(
            age: age,
            dateOfBirth: dateOfBirth,
            playerHeight:  playerHeight,
            playerWeight: playerWeight,
            imgUrl: imgUrl,
            name: name,
            number: number,
            position: position,
          ),
        ),
      ),
    );
  }
}
