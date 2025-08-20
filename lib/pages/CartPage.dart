import 'package:e_commerce_app/widgets/CartAppBar.dart';
import 'package:e_commerce_app/widgets/CartItamSamples.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [CartAppBar(),
        Container(
          height: 700,
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
               ),   
          ),
          child: Column(
            children: [
              CartItamSamples(),
            ],
          ),
        ),
        
        ],
      ),
    );
  }
}
