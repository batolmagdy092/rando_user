import 'package:flutter/material.dart';

class Wid extends StatelessWidget {
  String name,email,pic;


 Wid({required this.name,
 required this.email,
   required this.pic,
 });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(pic),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                SizedBox(height: 15,),

                Text(email),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
