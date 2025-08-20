import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context); //go back to the back screen
            },
            child: Icon(Icons.arrow_back, size: 30, color: Color(0XFF4C53A5)),
          ),
          SizedBox(width: 15),
          Text(
            "Cart",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0XFF4C53A5),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert, color: Color(0XFF4C53A5)),
        ],
      ),
    );
  }
}
