import 'package:e_comerace_app/cartscreen.dart';
import 'package:e_comerace_app/reusablewidget/custom_container.dart';
import 'package:e_comerace_app/reusablewidget/numberContainer.dart';
import 'package:e_comerace_app/reusablewidget/smallcustomContainer.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class AddToCartScreen extends StatefulWidget {
  const AddToCartScreen({super.key});

  @override
  State<AddToCartScreen> createState() => _AddToCartScreenState();
}

class _AddToCartScreenState extends State<AddToCartScreen> {
  @override
  Widget build(BuildContext context) {
    String moretextt =
        "Discover the perfect blend of fashion and comfort with our exquisite collection of shoes. From casual sneakers to sophisticated heels, our diverse range caters to every style preference. ";

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black, // Set the arrow color
            ),
            onPressed: () {
              Navigator.pop(context);
              // Handle the back button press
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/shoes.png',
                fit: BoxFit.fill,
                height: 260,
                width: 320,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SmallContainerWithImg(),
                  SmallContainerWithImg(),
                  SmallContainerWithImg(),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                backgroundColor: Colors.blue),
                            onPressed: () {},
                            child: Text(
                              'Details',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                backgroundColor: Colors.blue),
                            onPressed: () {},
                            child: Text(
                              'Specifications',
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fila Disrupto',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "\$328",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Description',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              ReadMoreText(
                moretextt,
                trimLines: 2,
                textAlign: TextAlign.justify,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style: TextStyle(color: Colors.white),
                lessStyle: TextStyle(color: Colors.blue),
                moreStyle: TextStyle(color: Colors.blue),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Size',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumberContainer(
                    textt: '38',
                  ),
                  NumberContainer(
                    textt: '38',
                  ),
                  NumberContainer(
                    textt: '38',
                  ),
                  NumberContainer(
                    textt: '38',
                  ),
                  NumberContainer(
                    textt: '38',
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'price',
                        style: TextStyle(color: Colors.white24),
                      ),
                      Text(
                        '\$238',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 100),
                          backgroundColor: Colors.blue),
                      onPressed: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return CartScreen();
                        },));
                      },
                      child: Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
