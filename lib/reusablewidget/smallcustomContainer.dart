import 'package:flutter/material.dart';
class SmallContainerWithImg extends StatelessWidget {
  const SmallContainerWithImg({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 105,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white12,
        image: DecorationImage(
            image: AssetImage('images/shoes.png'), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
