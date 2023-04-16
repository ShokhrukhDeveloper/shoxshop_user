import 'package:flutter/material.dart';
import 'package:shoxshop_mobile/Presentation/Pages/ProductsPage/ProductsPage.dart';
class SubCategoryPage extends StatelessWidget {
  const SubCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fashion"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 60,
         itemBuilder: (context,index)=> InkWell(
           onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (e)=>ProductsPage())),
           child: Container(
            height: 50,
            width: double.infinity,
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0xff9B9B9B)))
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/150"),radius: 20,),
                ),
                SizedBox(width: 10,),
                Flexible(
                  child: Text("Cardigans & Sweaters ",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),
                  ),
                )
              ],
            ),
        ),
         )
      ),
    );
  }
}
