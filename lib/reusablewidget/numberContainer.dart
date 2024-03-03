import 'package:flutter/material.dart';
class NumberContainer extends StatelessWidget {
  final String textt;
  const NumberContainer({super.key,
  required this.textt
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(100)),
      child: Center(
          child: Text(
           textt,
            style: TextStyle(color: Colors.white, fontSize: 25),
          )),
    );
  }
}
