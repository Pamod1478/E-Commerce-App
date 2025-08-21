import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 150,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              Text("Total :",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0XFF4C53A5),
                ),
              ),
              Spacer(),
              Text("Rs.16500.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color(0XFF4C53A5),
                ),
              ),
              
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15,left: 10, right: 10),
            child: Container(
              height: 50,
              width: double.infinity,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 color: Color(0XFF4C53A5),
                 
              ),
              child: Center(
                child: Text("Check Out",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}