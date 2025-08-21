import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItamSamples extends StatelessWidget {
  const CartItamSamples({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      
      children: [
        for(int i=3; i<6; i++ )
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
                      child: Image.asset("images/$i.png"),
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

                Positioned(
                  top: 10,
                  right: 20,
                  child: Column(
                  children: [
                    Icon(Icons.delete,color: Colors.red,),
                  ],
                ),),
                Positioned(
                  top: 70,
                  right: 10,
                  child: Row(
                    children: [
                      Container(
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFEDECF2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 10,
                            ),
                          ]
                        ),
                        
                       child: Icon(CupertinoIcons.plus),
                      ),

                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        child: Text("01",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Color(0XFF4C53A5),
                        ),),
                      ),

                      SizedBox(
                        width: 17,
                      ),
                      Container(
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFEDECF2),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 10,
                            ),
                          ]
                        ),
                        
                       child: Icon(CupertinoIcons.minus),
                      ),

                      
                      
                    ],
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