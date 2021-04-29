import 'package:flutter/material.dart';
import 'package:guddi/screens/constants.dart';
import 'package:guddi/screens/home/components/titleWithSearchBar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [


        TitleWithSearchbar(size: size),



      ],
    );
    }
  }
