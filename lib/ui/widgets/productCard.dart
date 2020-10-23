import 'package:flutter/material.dart';
import 'package:flutter_firestore/core/models/productModel.dart';
import 'package:flutter_firestore/ui/views/productDetails.dart';

class ProductCard extends StatelessWidget {
  final Product productDetails;
  
  ProductCard ({@required this.productDetails});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => ProductDetails(product: productDetails)));
      },
    );
  }
}