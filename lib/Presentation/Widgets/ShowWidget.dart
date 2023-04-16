import 'package:flutter/material.dart';
class ShowWidget extends StatelessWidget {
  const ShowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: MediaQuery.of(context).size.width-50,
              height: (MediaQuery.of(context).size.width-50)/2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
                image: const DecorationImage(image: NetworkImage("https://picsum.photos/400/150"),fit: BoxFit.cover)
              ),
              
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: MediaQuery.of(context).size.width-50,
              height: (MediaQuery.of(context).size.width-50)/2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                  image: DecorationImage(image: NetworkImage("https://picsum.photos/400/150"),fit: BoxFit.cover)
              ),

            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: MediaQuery.of(context).size.width-50,
              height: (MediaQuery.of(context).size.width-50)/2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                  image: DecorationImage(image: NetworkImage("https://picsum.photos/400/150"),fit: BoxFit.cover)
              ),

            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: MediaQuery.of(context).size.width-50,
              height: (MediaQuery.of(context).size.width-50)/2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                  image: DecorationImage(image: NetworkImage("https://picsum.photos/400/150"),fit: BoxFit.cover)
              ),

            )
          ],
        ),
      );
  }
}
