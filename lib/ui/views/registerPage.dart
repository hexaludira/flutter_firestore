import 'package:flutter/material.dart';
import 'package:flutter_firestore/core/services/auth_service.dart';
import 'package:flutter_firestore/ui/views/loginPage.dart';
//import 'package:flutter_firestore/ui/views/profilePage.dart';

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
                SliverList(
                  delegate: SliverChildListDelegate([
                    Row(
                      children: <Widget>[
                        Text(
                          'Hello.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.5,
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Divider(
                            thickness: 3,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 40),
                      ],
                    ),

                    Text(
                      'Register First',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 5,
                      ),
                    ),

                    SizedBox(height: 40,),

                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Email tidak boleh kosong';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              hintText: 'Email',
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Password',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            controller: _passController,
                            obscureText: true,
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Password tidak boleh kosong';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              focusedBorder: 
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}