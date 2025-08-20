import 'package:flutter/material.dart';

class CartItamSamples extends StatelessWidget {
  const CartItamSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Row(
                  children: [
                    Radio(
                      value: "",
                      groupValue: "",
                      activeColor: Color(0XFF4C53A5),
                      onChanged: (index) {},
                    ),
                    Container(
                      height: 110,
                      width: 70,
                      child: Image.asset("images/1.png"),
                    ),
                  ],
                ),
                Positioned(
                  top: 10, // Adjust the position
                  left: 140, // Adjust the position relative to the Row
                  child: Text(
                    "Product Title",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF4C53A5),
                    ),
                  ),

                ),
                Positioned(
                  top: 70, // Adjust the position
                  left: 140, // Adjust the position relative to the Row
                  child: Text(
                    "Rs.5500",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF4C53A5),
                    ),
                  ),
                  
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}