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
        Row(
          children: [
            Container(
              height: 24,
              child: Stack(
                children: [
                 Text(
                   "Recomended",
                   style: TextStyle(
                    fontSize: 20
                   ),
                  ),
                Positioned(
                    bottom: 0 ,
                    left: 10  ,
                    right: 0  ,
                  child:Container(
                       height: 20,
                       width: 30,
                       color: primary,
                       child: Text(
                         "More",
                         style: TextStyle(
                             fontSize: 12,
                             color: Colors.white
                         ),
                       ),
                     )
                    )
                  ],
                ),
              )
            ],
          )
        ],
      );
    }
  }

// Container(
// height: 24,
// child: Stack(
// children: [
// Padding(
// padding: const EdgeInsets.only(left:  padding1 / 4),
// child: Text(text,
// style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
// ),
// ),
// Positioned(
// bottom: 0,
// left: 0,
// right: 0,
// child: Container(
// margin: EdgeInsets.only(right: padding1 / 4),
// height: 5,
// color: primary.withOpacity(0.2),
// ),
// ),
// ],
// ),
// );