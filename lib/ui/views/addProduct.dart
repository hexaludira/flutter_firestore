import 'package:flutter/material.dart';
import 'package:flutter_firestore/core/models/productModel.dart';
import 'package:provider/provider.dart';
import '../../core/viewmodels/CRUDModel.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _formKey = GlobalKey<FormState>();
  String productType = 'Bag';
  String title;
  String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}