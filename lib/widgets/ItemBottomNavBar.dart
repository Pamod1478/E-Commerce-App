import 'package:flutter/material.dart';

class  ItemBottomNavBar extends StatelessWidget {
  const  ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(
       color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 15),
            child: Container(
              child: Text("Rs.5500",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0XFF4C53A5,)
              ),
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 35,
            width: 150,
            color: Colors.deepPurple,

          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Icon(Icons.shopping_cart_checkout,
                color: Colors.white,
                ),
              ),
              Text("Add to Cart",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16

              ),
              ),
            ],
          ),
          ),
        ],
      ),
       

     
    );
  }
}