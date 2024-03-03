import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final VoidCallback onTap;
   CustomContainer({super.key,
   required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 280,
        width: 180,
        decoration: BoxDecoration(
            color: Colors.white10, borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 10),
                child: Container(
                    decoration:
                        BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 35,
                    )),
              ),
            ),
            Image.asset(
              'images/shoes.png',
              height: 130,
              width: 160,
              fit: BoxFit.cover,
            ),

            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reebok Nano X',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '6 size | 10 Color',
                          ),
                          Text(
                            'price',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "\$382",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 15,
                    right: 20,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 35,
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
