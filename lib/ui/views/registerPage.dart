import 'package:flutter/material.dart';
import 'package:flutter_firestore/core/services/auth_service.dart';
import 'package:flutter_firestore/ui/views/loginPage.dart';
import 'package:flutter_firestore/ui/views/profilePage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _confirmPassController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF5cc3fd),
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 40),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverLis
              ],
            ),
          ),
        ),
      ),
    );
  }
}