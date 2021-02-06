import 'package:flutter/material.dart';
import 'package:smiling_sniper_fc_app/config/app_color.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Coming Soon!",
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: AppColor.secondary),
          ),
        ),
      ),
    );
  }
}
