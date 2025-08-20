import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context); //go back to the back screen
            },
            child: Icon(Icons.arrow_back, size: 30, color: Color(0XFF4C53A5)),
          ),
        ],
      ),
    );
  }
}
