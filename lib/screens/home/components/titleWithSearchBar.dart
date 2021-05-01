import 'package:flutter/material.dart';

import '../../constants.dart';

class TitleWithSearchbar extends StatelessWidget {
  const TitleWithSearchbar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(36),
        bottomRight: Radius.circular(36),
      )),
      height: size.height * 0.22,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.22 - 27,
            decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Row(
              children: [
                Text(
                  "SYED MUNIB",
                  style: TextStyle(
                      color: background,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset(
                  "assets/icons/logo.jpeg",
                  height: size.height * 0.12,
                  width: size.width * 0.12,
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: padding1),
                padding: EdgeInsets.symmetric(horizontal: padding1),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: primary.withOpacity(0.27),
                        blurRadius: 50,
                        offset: Offset(0, 10))
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36),
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36)),
                ),
                height: 54,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: primary.withOpacity(0.5)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Image.asset(
                        'assets/icons/search-icon.png',
                        height: size.height * 0.02,
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
