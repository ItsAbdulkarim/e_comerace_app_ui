import 'package:e_comerace_app/addto_cart_screen.dart';
import 'package:e_comerace_app/reusablewidget/custom_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
              Text(
                'Find your Favorite\n Shoes Style',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)))),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nike',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Nike',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Nike',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Nike',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Nike',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [CustomContainer(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AddToCartScreen();
                      },));
                    },
                ), CustomContainer(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return AddToCartScreen();
                    },));
                  },
                )],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [CustomContainer(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return AddToCartScreen();
                    },));
                  },
                ), CustomContainer(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return AddToCartScreen();
                    },));
                  },
                )],
              )
            ],
          ),
        ),
      ),
    );
  }
}
