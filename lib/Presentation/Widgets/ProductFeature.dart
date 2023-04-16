import 'package:flutter/material.dart';

import '../Pages/SpecialProductsPage/SpecialProductPage.dart';
class ProductFeature extends StatelessWidget {
  const ProductFeature({Key? key, required this.title, required this.color}) : super(key: key);
final String title;
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFA),
      child: Column(
        children: [
          const SizedBox(height: 15,),
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
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            width: MediaQuery.of(context).size.width-50,
            height:( MediaQuery.of(context).size.width-50)/2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color
            ),
            child: Row(
              children: [
                Flexible(child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("C02 - Cable Multifunction",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: "DM Sans",
                          color: Colors.white
                      ),
                    ),
                    Icon(Icons.arrow_forward,size: 30,color: Colors.white,),
                  ],
                ) ),


                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network("https://picsum.photos/500/300",
                      width: (MediaQuery.of(context).size.width-70)/2 ,
                    height: (MediaQuery.of(context).size.width-70)/2 ,
                      fit: BoxFit.cover,
                    ),

                )


              ],
            ),
          ),
          )

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
