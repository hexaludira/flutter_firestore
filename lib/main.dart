import 'package:flutter/material.dart';
import 'package:flutter_firestore/ui/views/loginPage.dart';
import 'package:provider/provider.dart';
import './ui/router.dart';
import 'locator.dart';
import './core/viewmodels/CRUDModel.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => locator<CRUDModel>()),
      ],
      child: MaterialApp(
        title: 'Login Firestore',
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: Router.generateRoute,
      ),
    );


    /** Versi 2 */
    // return MaterialApp(
    //   title: 'Login Test',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   home: LoginPage(),
    // );

    /** use provider */
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(builder: (_) => locator<CRUDModel>()),
    //   ],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     // home: LoginPage(),
    //     initialRoute: '/',
    //     title: 'Product App',
    //     theme: ThemeData(),
    //     onGenerateRoute: Router.generateRoute,
    //   ),
    // );
  }
}