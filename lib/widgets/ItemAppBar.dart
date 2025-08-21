import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

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
          SizedBox(width: 30),
          Text(
            "Product",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0XFF4C53A5),
            ),
          ),
          Spacer(),
          Icon(Icons.favorite, 
          color: Colors.red,),
        ],
      ),
    );
  }
}