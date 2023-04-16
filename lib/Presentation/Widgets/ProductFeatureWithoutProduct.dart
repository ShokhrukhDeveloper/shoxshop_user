import 'package:flutter/material.dart';
import 'package:shoxshop_mobile/Presentation/Pages/SpecialProductsPage/SpecialProductPage.dart';
class  ProductFeatureWithout extends StatelessWidget {
  const ProductFeatureWithout ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFA),
      child: Column(
        children: [
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              Text(
                "$title",
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: "DM Sans"),
              ),
              InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>SpeacialProductsPage(title: title,))),
                child: Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff3669C9),
                      fontFamily: "DM Sans"),
                ),
              ),
            ],),

          const SizedBox(
            height: 15,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                item(),
                item(),
                item(),
                item(),
                item(),
                item(),
              ],
            ),
          ),


        ],
      ),
    );
  }
  Widget item(){
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      width: 150,
      height: 250,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const SizedBox(height: 5,),
          Container(
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(image:NetworkImage("https://picsum.photos/200"),fit: BoxFit.cover,) )
          ),

          const Text(
            "TMA-2 HD Wireless ",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 5,),
          const Text(
            "Rp. 1.500.000 ",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 12, color: Color(0xffFE3A30), fontWeight: FontWeight.w700),
          ),

          Row(
            children: [
              Icon(Icons.star,color: Colors.amberAccent,),
              const SizedBox(width: 2,),
              const Text(
                "4.6 ",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
              ),
              const SizedBox(width: 5,),
              const Text(
                "86 Reviews",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
              ),
            ],
          )


        ],
      ),
    );
  }
}
