import 'package:flutter/material.dart';

class AppTextFiled extends StatelessWidget {
  const AppTextFiled({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
      ),
      suffixIcon: Icon(Icons.search,color: Colors.black,),
          labelText: "Search Product Name",
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w600
        )
      ),
    );
  }
}
