import 'package:e_commerce_app/widgets/CartAppBar.dart';
import 'package:e_commerce_app/widgets/CartBottomNavBar.dart';
import 'package:e_commerce_app/widgets/CartItamSamples.dart';
import 'package:flutter/cupertino.dart';
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
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0XFF4C53A5),
                            
                      ),
                          
                      child: Icon(CupertinoIcons.plus,color: Colors.white,size: 20,),
                    ),
                    SizedBox(
                      width: 15,
                    ),

                    Container(
                      child: Text("Add Coupon Code",
                      style: TextStyle(
                        color: Color(0XFF4C53A5),
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                        ),
                        

                      ),
                    ),
                  ],
                ),
              ),
              
            ],
            
          ),
        ),
        
        ],
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}
