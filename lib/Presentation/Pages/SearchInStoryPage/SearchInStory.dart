import 'package:flutter/material.dart';
import 'package:shoxshop_mobile/Presentation/Widgets/AppTextField.dart';
import 'package:shoxshop_mobile/Presentation/Widgets/ProductFeatureWithoutProduct.dart';
class SearchInStoryPage extends StatelessWidget {
  const SearchInStoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      title: const Text("Search in Store"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20,right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 20,),
            const AppTextFiled(),
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
            const Text("Last Wanted",
            style: TextStyle(
              fontFamily: "DM Sans",
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children:  [
                  Flexible(
                    child: Row(
                      children: const [
                        Icon(Icons.watch_later_outlined,color: Colors.grey,),
                        SizedBox(width: 10,),
                        Flexible(
                          child: Text("TMA2 Wireless",
                            style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.clear,color: Colors.black,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children:  [
                  Flexible(
                    child: Row(
                      children: const [
                        Icon(Icons.watch_later_outlined,color: Colors.grey,),
                        SizedBox(width: 10,),
                        Flexible(
                          child: Text("TMA2 Wireless",
                            style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.clear,color: Colors.black,))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children:  [
                  Flexible(
                    child: Row(
                      children: const [
                        Icon(Icons.watch_later_outlined,color: Colors.grey,),
                        SizedBox(width: 10,),
                        Flexible(
                          child: Text("TMA2 Wireless",
                            style: TextStyle(
                                fontFamily: "DM Sans",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.clear,color: Colors.black,))
                ],
              ),
            ),
            const ProductFeatureWithout(title: "Featured Product")
          ],
        ),
      ),
      ),
    );
  }
}
