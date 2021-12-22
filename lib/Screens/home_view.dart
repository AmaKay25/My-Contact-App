


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_contact_app/Modules/contact.dart';
import 'package:my_contact_app/widgets/column_widget.dart';


class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Contact> contactInfo = [];

  //reading a json file from a local directory

  Future<void> readFile() async {
    String content = await rootBundle.loadString("data/info.json");
  
  

 //Converting jsonString to List datastructure
List collection = jsonDecode(content);

List<Contact> contact =
collection.map((json) => Contact.fromJson(json)).toList();

setState(() {
  contactInfo = contact;
});
  }

@override
  void initState() {
    readFile();
    super.initState();
  }


      
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 5, 23, 1),
      appBar: AppBar(
        title:  Text("My Contacts",
        style: TextStyle(
          color: Theme.of(context).appBarTheme.toolbarTextStyle!.color,
          fontSize: 25.0,
          fontFamily: "Satisfy" ),

        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical:5),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/sandrah.jpg"),
            ),
          )
        ],
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromRGBO(52, 52, 56, 1),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: const BorderSide
                  (width: 2.0, color: Colors.white))),
          ),
            ),
          )),
        
        body: ListView(children: [
                 const Padding(
                  padding: EdgeInsets.symmetric(horizontal:30.0, vertical: 16.0),
                  child: Text("My Card",
                  style: TextStyle(fontSize: 16.0, 
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
                  ),
                ),
                ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    Contact information =  contactInfo[index];
                    return ColumnWidget(contact: information);
                  },
                   separatorBuilder: (BuildContext context, int index) => 
                   const Padding(
                     padding: EdgeInsets.symmetric(horizontal: 20.0),
                     child: Divider(
                       color: Colors.black,
                       thickness: 2.5,
                     ),
                   ),
                    itemCount: contactInfo.length)
        ]     
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          backgroundColor: const Color.fromRGBO(4, 11, 92, 1),
        ),
    );
  }
}
             
          
          
          
    