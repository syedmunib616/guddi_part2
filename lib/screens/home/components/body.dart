import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guddi/screens/home/components/titleWithSearchBar.dart';

import 'RecommendedProducts.dart';
import 'titleWitMoreButton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          TitleWithSearchbar(size: size),
          titleWithMoreButton(),
          RecommendedProducts(size: size),
          titleWithUnderLine(
            text: "Featured Products",
          )
        ],
      ),
    );
  }
}
