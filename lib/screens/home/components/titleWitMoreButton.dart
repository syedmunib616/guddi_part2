import 'package:flutter/material.dart';
import 'package:guddi/screens/constants.dart';

class titleWithMoreButton extends StatelessWidget {
  const titleWithMoreButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          titleWithUnderLine(
            text: "Recomended",
          ),
          Spacer(),
          FlatButton(
            onPressed: () {},
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
            color: primary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          )
        ],
      ),
    );
  }
}

class titleWithUnderLine extends StatelessWidget {
  const titleWithUnderLine({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: padding1 / 6),
            child: Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 5,
              margin: EdgeInsets.only(right: padding1 / 4),
              color: primary.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
