import 'package:clippy_flutter/arc.dart';
import 'package:e_commerce_app/widgets/ItemAppBar.dart';
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
                               Icon(Icons.favorite,color: Colors.grey.shade400,)
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
    );
  }
}