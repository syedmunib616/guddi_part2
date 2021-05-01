import 'package:flutter/material.dart';
import 'package:guddi/screens/constants.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          recommendedCard(
            size: size,
            image: "assets/images/1.jpeg",
            product: "Samantha",
            country: "Russia",
            price: "\$440",
            prees: () {},
          ),
          recommendedCard(
            size: size,
            image: "assets/images/2.jpeg",
            product: "Samantha",
            country: "Russia",
            price: "\$440",
            prees: () {},
          ),
          recommendedCard(
            size: size,
            image: "assets/images/3.jpeg",
            product: "Samantha",
            country: "Russia",
            price: "\$440",
            prees: () {},
          ),
          recommendedCard(
            size: size,
            image: "assets/images/4.jpeg",
            product: "Samantha",
            country: "Russia",
            price: "\$440",
            prees: () {},
          ),
          recommendedCard(
            size: size,
            image: "assets/images/5.jpeg",
            product: "Samantha",
            country: "Russia",
            price: "\$440",
            prees: () {},
          ),
          recommendedCard(
            size: size,
            image: "assets/images/6.jpeg",
            product: "Samantha",
            country: "Russia",
            price: "\$440",
            prees: () {},
          ),
        ],
      ),
    );
  }
}

class recommendedCard extends StatelessWidget {
  const recommendedCard({
    Key key,
    @required this.size,
    this.image,
    this.product,
    this.country,
    this.price,
    this.prees,
  }) : super(key: key);

  final Size size;
  final String image, product, country, price;
  final Function prees;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      height: size.height * 0.3,
      width: size.width * .4,
      child: GestureDetector(
        onTap: prees,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              child: Image.asset(
                image,
                height: size.height * 0.2,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            ),
            Container(
              padding: EdgeInsets.all(padding1 / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: primary.withOpacity(0.23))
                  ]),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$product\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(color: primary.withOpacity(0.5))),
                    ]),
                  ),
                  Spacer(),
                  Text(
                    "$price",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
