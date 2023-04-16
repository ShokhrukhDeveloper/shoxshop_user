import 'package:flutter/material.dart';
import 'package:shoxshop_mobile/Presentation/Widgets/AppTextField.dart';
import 'package:shoxshop_mobile/Presentation/Widgets/CategoryWidget.dart';
import 'package:shoxshop_mobile/Presentation/Widgets/ProductFeature.dart';
import 'package:shoxshop_mobile/Presentation/Widgets/ProductFeatureWithoutProduct.dart';
import 'package:shoxshop_mobile/Presentation/Widgets/ShowWidget.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("ShoxShop"),
        centerTitle: true,
        actions: const [Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.doorbell, color: Colors.black,),
          ), Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart , color: Colors.black,),
          ),],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              AppTextFiled(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: ShowWidget(),
              ),
              CategoryWidget(),
              ProductFeature(title: "Featured Product",color: Colors.green,),
              ProductFeature(title: "Best Sellers",color: Color(0xff3669C9),),
              ProductFeatureWithout(title: "New Arrivals",),
              ProductFeatureWithout(title: "Top Rated Product",),
              ProductFeatureWithout(title: "Special Offers",),

            ],
          ),
        ),
      ),
    );
  }
}
