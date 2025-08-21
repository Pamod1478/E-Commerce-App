import 'package:clippy_flutter/arc.dart';
import 'package:e_commerce_app/widgets/ItemAppBar.dart';
import 'package:e_commerce_app/widgets/ItemBottomNavBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // Custom AppBar
          ItemAppBar(),
          // Main Container
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
                // Product Image
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    "images/1.png",
                    height: 300,
                  ),
                ),
                // Arc Design Below Image
                Arc(
                  edge: Edge.TOP,
                  arcType: ArcType.CONVEY,
                  height: 30,
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 50),
                          Text(
                            "Product Title",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF4C53A5),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          
                          Row(
                            children: [
                              for(int i=0; i<4; i++)
                              Icon(Icons.favorite,color: Color(0XFF4C53A5,)),
                               Icon(Icons.favorite,color: Colors.grey.shade400,),

                               Spacer(),

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
                                      
                                    child: Icon(CupertinoIcons.minus),
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
                                      
                                    child: Icon(CupertinoIcons.plus),
                                    ),

                                    
                                    
                                  ],
                                ),
                              ),
                            ],
                            
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                            child: Container(
                              child: Text("This is more details description of the product.you can write here more about the product. this is lengthy description.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Color(0XFF4C53A5),
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 15,
                          ),
                          Row(
                           
                            children: [
                              Container(
                                child: Text("Size :",
                                style: TextStyle(
                                color: Color(0XFF4C53A5),
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                                ),
                              ),

                              
                              Row(
                                children: [
                                  for (int i = 1; i <= 5; i++) // Loop 5 times
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
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
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8, top: 1),
                                          child: Text(
                                            "$i", // Display the current loop index
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0XFF4C53A5),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 10),


                          
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}