import 'package:e_commerce_app/widgets/ItemAppBar.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          ItemAppBar(),
        ],
      ),
    );
  }
}