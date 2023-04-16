import 'package:flutter/material.dart';

import 'ProductRatingWidget.dart';
class ReviewProductPage extends StatelessWidget {
  const ReviewProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Review Product"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 25,left: 25),
        child: SingleChildScrollView(
          child: Column(
            children:  [
              const ProductRatingWidget(),
              comment("Yelena Belova"),
              comment("Stephen Strange"),
              comment("Peter Parker"),
              comment("T’chala"),
              comment("Tony Stark"),
              comment("Peter Quil"),
              comment("Peter Quil"),
              comment("Wanda Maximof"),


            ],
          ),
        ),
      ),
    );
  }
  Widget comment(String titi){
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network("https://picsum.photos/300/300",width: 40,height: 40,fit: BoxFit.cover,),
          ),
          // Container(
          //   width: 40,
          //   height: 40,
          //   decoration: BoxDecoration(
          //       color: Colors.deepOrange,
          //       borderRadius: BorderRadius.circular(20)),
          // ),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Flexible(
                      child: Text("$titi",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: "DM Sans"


                        ),
                      ),
                    ),
                    SizedBox(width: 1,),
                    Text("2 Minggu yang lalu",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: "DM Sans",color: Color(0xff838589)


                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3,),
                Row(
                  children: const [
                    Icon(Icons.star,color: Color(0xffFFC120),size: 20,),
                    Icon(Icons.star,color: Color(0xffFFC120),size: 20,),
                    Icon(Icons.star,color: Color(0xffFFC120),size: 20),
                    Icon(Icons.star_border,color: Color(0xffC4C5C4),size: 20),
                    Icon(Icons.star_border,color: Color(0xffC4C5C4),size: 20),
                  ],
                ),
                const SizedBox(height: 10,),
                Text(commm,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: "DM Sans"
                  ),

                )


              ],
            ),
          ),

        ],
      ),
    );
  }

}
const commm="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";

