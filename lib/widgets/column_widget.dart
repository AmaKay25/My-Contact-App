

import 'package:flutter/material.dart';
import 'package:my_contact_app/Modules/contact.dart';




  class ColumnWidget extends StatelessWidget {
    const ColumnWidget({ Key? key, required this.contact }) : super(key: key);
  
  

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return   ListTile(
                  leading: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: NetworkImage(contact.image)),
                    title: Text(
                      contact.name,
                    style: const TextStyle(fontFamily: "Satisfy",
                    color: Colors.white),
                   
                    ),
                     subtitle: Text(contact.phone,
                     style: const TextStyle (color: Colors.white),
                     ),
                    trailing: Icon(Icons.more_horiz,
                    color: Theme.of(context).iconTheme.color,
                    ),
                  );
          
  }
}