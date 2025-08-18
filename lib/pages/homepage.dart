import 'package:e_commerce_app/widgets/HomeAppBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: HomeAppBar(),
        ),
        body: ListView(
          children: [
            // Add your page content here
          ],
        ),
      ),
    );
  }
}
