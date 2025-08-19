import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFEDECF2), // Use a container instead of Scaffold
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Enable horizontal scrolling
        child: Row(
          children: [
            for (int i = 1; i < 8; i++)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0), // Add spacing
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Image.asset("images/$i.png", width: 40, height: 40),
                    Text(
                      "Sandal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF4C53A5),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
