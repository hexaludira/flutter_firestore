import 'package:flutter/material.dart';
import 'package:flutter_firestore/core/services/auth_service.dart';
import 'package:flutter_firestore/ui/views/homeView.dart';
import 'package:flutter_firestore/ui/views/profilePage.dart';
import 'package:flutter_firestore/ui/views/registerPage.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.blueAccent,
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 15, right: 15, top: 40),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                //Tulisan Hello
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

                //Tulisan Welcome Back
                Text(
                  'Welcome back',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 36,
                    letterSpacing: 5
                  ),
                ),
                //Spasi
                SizedBox(height: 40),

                //Form username & password
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
                        decoration: InputDecoration(
                          hintText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                            borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(60),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )
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
                        decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ), 
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              SignInSignUpResult result = await AuthService.signInWithEmail(
                                email: _emailController.text, pass: _passController.text
                              );

                              if (result.user != null) {
                                //go to profile page
                                Navigator.push(
                                  context, 
                                  //MaterialPageRoute(builder: (context) => ProfilePage(user: result.user,))
                                  MaterialPageRoute(builder: (context) => HomeView())
                                );
                              } else {
                                //show dialog
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                                          title: Text('Error'),
                                                          content: Text(result.message),
                                                          actions: <Widget>[
                                                            FlatButton(onPressed: () {
                                                              Navigator.pop(context);
                                                            }, 
                                                            child: Text('OK'),
                                                            ),
                                                          ],
                                                        )
                                );
                              }
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8), 
                          ),
                          color: Color(0xFF4f4f4f),
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 16),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'OR',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Login with Google',
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: Colors.white,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Login with Facebook',
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: Colors.white,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
                SizedBox(height: 30),
              ]), 
            ),
            
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container (
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Don\'t have account ?',
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                      },
                      child: Text(
                        'Register here',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}