import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                            borderRadius: BorderRadius.circular(8),
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
                          onPressed: () {},
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: 
                          ),
                        ),
                      )
                    ],
                  ),
                )

              ]), 
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container (
                color: Colors.red,
                child: Text('Sliver Fill Remaining'),
              ),
            )
          ],
        )
      ),
    );
  }
}