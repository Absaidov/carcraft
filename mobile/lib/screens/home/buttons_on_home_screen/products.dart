import 'package:mobile/constants/constants.dart';
import 'package:mobile/screens/home/database_section/products/products_middle_section_database.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        // top: false,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent, // Прозрачный фон
                iconTheme: IconThemeData(color: greenPhone),
              ),
              const ProductsMiddleSectionDatabase(),
            ],
          ),
        ),
      ),
    );
  }
}
