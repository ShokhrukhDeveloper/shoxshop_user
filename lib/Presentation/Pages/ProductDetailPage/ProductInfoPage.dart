import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12),
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
            const Text(
              "TMA-2HD Wireless sdfjkasdfhjshdfklsadhfjklashdfkasdhfkasjdfkjlasdhfjklasdfhjk",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 24,

              ),
              maxLines: 2,),
            const SizedBox(height: 10,),

          ],
        )),
      ),
    );
  }
}
