import 'package:flutter/material.dart';
import 'package:my_contact_app/Screens/home_view.dart';


void main() {
  runApp(const MyContactAPP());
}


class MyContactAPP extends StatelessWidget {
  const MyContactAPP({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Contact App",
      theme: ThemeData(
        fontFamily: "Satisfy",
        iconTheme: const IconThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(3, 5, 23, 1),
          toolbarTextStyle: TextStyle(color: Colors.white)),
      primaryColor: const Color.fromRGBO(3, 5, 23, 1),
      ),
      home: const HomeView(),
      
    );
  }
}
