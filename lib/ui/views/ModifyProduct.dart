import 'package:flutter/material.dart';
import 'package:flutter_firestore/core/models/productModel.dart';
import 'package:flutter_firestore/core/viewmodels/CRUDModel.dart';
import 'package:provider/provider.dart';

class ModifyProduct extends StatefulWidget {
  final Product product;

  ModifyProduct({@required this.product});

  @override
  _ModifyProductState createState() => _ModifyProductState();
}

class _ModifyProductState extends State<ModifyProduct> {
  final _formKey = GlobalKey<FormState>();

  String productType;

  String title;

  String price;

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<CRUDModel>(context);
    productType =
        widget.product.img[0].toUpperCase() + widget.product.img.substring(1);

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Modify Product Details'),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Form(
            child: null
          ),
        )
      );
  }
}
