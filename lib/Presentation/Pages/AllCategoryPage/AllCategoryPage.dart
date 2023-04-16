import 'package:flutter/material.dart';
import 'package:shoxshop_mobile/Presentation/Widgets/CategoryItem.dart';

class AllCategoryPage extends StatelessWidget {
  const AllCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEDEDED),
      appBar: AppBar(
        title: Text("All category"),
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Wrap(
          runAlignment: WrapAlignment.center,

          // alignment: WrapAlignment.spaceBetween,
          children: const [
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
            CategoryItemWidget(),
          ],
        ),
      ),
    );
  }
}
