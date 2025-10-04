import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text('Detail Item')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${itemArgs.name}', style: TextStyle(fontSize: 20)),
            Text('Price: ${itemArgs.price}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}