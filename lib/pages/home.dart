import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/data.dart';
import 'package:flutter_application_1/pages/detail.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Katalog Menu',
          style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),),
      ),
      body: ListView.builder(
        itemCount: catalog.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailMenu(menus: catalog[index]),
                ),
              );
            },
            leading: Image.network(catalog[index].imageUrl,
            width: 60,
            height: 60,
            ),
            title:Text (catalog[index].productName),
            subtitle: Text (catalog[index].price),
            trailing: Icon(Icons.arrow_forward_ios)
          );
        },
      ),
    );
  }
}