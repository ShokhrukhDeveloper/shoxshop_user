import 'package:flutter/material.dart';

import '../ProductDetailPage/ProductInfoPage.dart';
class InfoSellerPage extends StatelessWidget {
  const InfoSellerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Info Seller"),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            /// seller info
            Container(
              height: 40,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(21),
                      child: Image(image: NetworkImage("https://picsum.photos/200/300"),width: 40,height: 40,fit: BoxFit.cover,)),
                  const SizedBox(width: 15,),
                  Flexible(child: Align(alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:   [
                        const Text("Shop Larson Electronic",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: "DM Sans",
                          ),
                        ),
                        Flexible(
                            child:Row(
                              children: const [
                                Flexible(
                                  child: Text("Official Store",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black54,
                                      fontFamily: "DM Sans",
                                    ),
                                  ),
                                ),
                                Icon(Icons.safety_check,color: Color(0xff3669C9),size: 14,)
                              ],
                            )),

                      ],
                    ),
                  )),
                  /// rating seller
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.amberAccent,),
                      SizedBox(width: 2,),
                      Text(
                        "4.6 ",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            /// Seller location and schedule
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: const [
               Icon(Icons.location_history,size: 20,),
               SizedBox(width: 10,),
               Flexible(
                 child: Padding(
                   padding: EdgeInsets.only(top: 4.0),
                   child: Text("Jawa Barat, Bandung (Jam Buka 08:00-21:00) ",
                   overflow: TextOverflow.ellipsis,
                   maxLines: 2,
                   style: TextStyle(
                     fontSize: 12,
                     fontFamily: "DM Sans",
                     color: Color(0xff0C1A30),
                     fontWeight: FontWeight.w400
                   ),
                   ),
                 ),
               )
             ],
           ),

            const SizedBox(height: 20,),
            /// Store info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Followers",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff838589),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "DM Sans"
                      ),
                      ),
                      SizedBox(height: 10,),
                      Text("23 k",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff0C1A30),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "DM Sans"
                      ),
                      ),

                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Products",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff838589),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "DM Sans"
                      ),
                      ),
                      SizedBox(height: 10,),
                      Text("123 Item",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff0C1A30),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "DM Sans"
                      ),
                      ),

                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Joined",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff838589),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "DM Sans"
                      ),
                      ),
                      SizedBox(height: 10,),
                      Text("20 Okt 2021",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff0C1A30),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "DM Sans"
                      ),
                      ),


                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Divider(color: Colors.grey,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Delivery Support",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: "DM Sans",
                      color:Colors.black
                  ),),
                  Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Colors.black,)
                ],
              ),
            ),
            const Divider(color: Colors.grey,),
            
            Expanded(
              child: Container(
                color: const Color(0xffFAFAFA),
                child:
                  GridView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: 9,
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: (MediaQuery.of(context).size.width) ~/156,
                        childAspectRatio: 15/24,
                        crossAxisSpacing: 13,
                        mainAxisSpacing: 13,

                      ),
                      itemBuilder: (c,i)=>InkWell(
                          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const ProductDetailPage())),
                          child: item())),
              ),
            )

          ],
        ),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const SizedBox(height: 5,),
          
          Expanded(
            child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(image:NetworkImage("https://picsum.photos/200"),fit: BoxFit.cover,) )
            ),
          ),
          const SizedBox(height: 10,),
          const Text(
            "TMA-2 HD Wireless rtertawrtawetat sdasdsdfds asdasdf",
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8,),
          const Text(
            "Rp. 1.500.000 ",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 12, color: Color(0xffFE3A30), fontWeight: FontWeight.w700),
          ),

          Row(
            children: const [
              Icon(Icons.star,color: Colors.amberAccent,),
              SizedBox(width: 2,),
              Text(
                "4.6 ",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
              ),
              SizedBox(width: 5,),
              Flexible(
                child: Text(
                  "86 Reviews",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          )


        ],
      ),
    );
  }
}
