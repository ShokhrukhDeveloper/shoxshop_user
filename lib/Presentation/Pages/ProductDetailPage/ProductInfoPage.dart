import 'package:flutter/material.dart';
import 'package:shoxshop_mobile/Presentation/Pages/InfoSellerPage/InfoSellerPage.dart';
import 'package:shoxshop_mobile/Presentation/Widgets/ProductFeatureWithoutProduct.dart';

import '../ReviewProductPage/ReviewProductPage.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detail Product"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              )),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  // margin: EdgeInsets.all(12),
                  height: MediaQuery.of(context).size.width - 60,
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width - 60,
                  child: Stack(
                    children: [

                      Image.network(
                        "https://picsum.photos/200/300",
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                       Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          color: Colors.white54,
                          child: Text("1/5 Foto",
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            const Text(
              "TMA-2HD Wireless ",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 24,
                fontFamily: "DM Sans",
              ),
              maxLines: 2,),
            const SizedBox(height: 10,),
            const Text(
              "TMA-2HD Wireless ",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontFamily: "DM Sans",
                color: Color(0xffFE3A30)),
              maxLines: 2,),
            Row(
              children: [
                Flexible(
                  flex: 260,
                  child: Row(
                    children: const [
                      Icon(Icons.star,color: Colors.amberAccent,),
                      SizedBox(width: 2,),
                      Text(
                        "4.6 ",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                      Flexible(
                        child: Text(
                          "86 Reviews",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12, color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 5,),

                Flexible(
                  flex: 100,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffEEFAF6)
                      ),
                      child:
                      const Text("Tersedia : 250",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12, color: Color(0xff3A9B7A), fontWeight: FontWeight.w400),

                      ),
                    ),
                  ),
                )
              ],
            ),
            const Divider(color: Colors.grey,),
            InkWell(
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const InfoSellerPage())),
              child: Container(
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
                          Text("Shop Larson Electronic",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: "DM Sans",
                          ),
                          ),
                      Flexible(
                        child:Row(
                            children: [
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

                    const Icon(Icons.arrow_forward_ios, size: 18,)
                  ],
                ),
              ),
            ),
            const Divider(color: Colors.grey,),
            const SizedBox(height: 10,),
            const Text("Description Product",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: "DM Sans"


              ),),
            const SizedBox(height: 10,),
            const Text(desc,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "DM Sans"


              ),),
            const SizedBox(height: 20,),
            const Divider(color: Colors.grey,),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Flexible(
                  child: Text("Review (86)",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: "DM Sans"


                    ),),
                ),
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
            const SizedBox(height: 20,),
            comment("Yelena Belova"),
            comment("Peter Parker"),
            comment("Stephen Strange"),



              InkWell(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (c)=>const ReviewProductPage())),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)
                  ),
                  child: const Center(
                    child: Text(
                      "See All Review",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: "DM Sans",
                      ),
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 20,),
            const ProductFeatureWithout(title: "Featured Product"),
            const SizedBox(height: 10,),
            Row(
              children: [
                Flexible(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFE3A30)
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Flexible(
                        child: Text("Added",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "DM Sans",
                              color: Color(0xffFFFFFF)),),
                      ),
                      Icon(Icons.favorite,color: Colors.white,)


                    ],
                  ),
                  ),

                ),
                const SizedBox(width: 20,),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff3669C9)
                    ),
                    child: const Center(
                      child: Text("Add to Cart",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: "DM Sans",
                            color: Color(0xffFFFFFF)),),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,)

          ],
        )),
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
const String desc="The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. \n\n The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. " ;

