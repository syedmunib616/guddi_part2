import 'package:flutter/material.dart';
import 'package:guddi/screens/constants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        leading: IconButton(
          icon: Image.asset("assets/icons/menuicon.png"),
          onPressed: (){},
      ),
      );

  }
}
