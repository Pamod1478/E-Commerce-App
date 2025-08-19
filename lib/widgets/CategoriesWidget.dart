import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: Column(
        children: [
          Row(
            children: [Container(height: 30, width: 30, color: Colors.black)],
          ),
        ],
      ),
    );
  }
}
