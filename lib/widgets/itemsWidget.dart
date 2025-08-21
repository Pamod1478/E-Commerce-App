import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //start divide in to 2 rows
      child: Wrap(
        spacing: 15,
        runSpacing: 15,
        //end divide in to 2 rows
        children: [
          for (int i = 1; i < 8; i++)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 230,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10, // Align to the top
                      left: 15, // Align to the left
                      child: Container(
                        height: 22,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0XFF4C53A5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            "-50%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.red[700],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "itemPage");
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 35, left: 25),
                        child: Container(
                          child: Image.asset("images/$i.png", height: 90),
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 70,
                      left: 10,
                      child: Container(
                        child: Text(
                          "Product Title",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0XFF4C53A5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 10,
                      child: Container(
                        width: 120, // Set a fixed width to allow text wrapping
                        child: Text(
                          "Write description of product ",
                          style: TextStyle(height: 1),
                          maxLines: 3,
                          overflow: TextOverflow
                              .ellipsis, // Optional: Add ellipsis if text overflows
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: 15,
                      left: 10,
                      child: Container(
                        child: Text(
                          "Rs.5500",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0XFF4C53A5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 18,
                      right: 20,
                      child: Icon(
                        Icons.shopping_cart_checkout,
                        color: Color(0XFF4C53A5),
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
