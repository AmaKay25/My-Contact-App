import 'package:flutter/material.dart';

import 'Screens/home_view.dart';


void main() {
  runApp(const ContactAPP());
}


class ContactAPP extends StatelessWidget {
  const ContactAPP({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Contact App",
      theme: ThemeData(
      primaryColor: const Color.fromRGBO(11, 14, 69, 1),
      ),
      home: const HomeView(),
      
    );
  }
}
