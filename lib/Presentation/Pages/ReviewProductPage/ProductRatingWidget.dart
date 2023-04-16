import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class ProductRatingWidget extends StatelessWidget {
  const ProductRatingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: 140,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("4.6",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black

                ),
                ),

                Text("/5",
                style: TextStyle(
                  fontFamily: "DM Sans",
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
                )
              ],
            ),
            Text("86 Reviews",
              style: TextStyle(
                  fontFamily: "DM Sans",
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),
            )
          ],
        ),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: VerticalDivider(color: Colors.grey,)),
          Column(
            children: [
               rating(5),
               rating(4),
               rating(3),
               rating(2),
               rating(1),

            ],
          )
        ],
      ),
    );
  }
  Widget rating(int rate)
  {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        RatingBarIndicator(
          rating: rate.toDouble(),
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: Colors.amber,

          ),
          itemCount: 5,
          itemSize: 25.0,
          direction: Axis.horizontal,
        ),
        const Text("71",
            style: TextStyle(
                fontFamily: "DM Sans",
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black
            )
        ),
      ],
    );
  }
}
