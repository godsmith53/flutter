import 'package:flutter/material.dart';
import 'package:flutter1/models/catalog.dart';
import 'package:flutter1/widgets/drawer.dart';
import 'package:flutter1/widgets/item_widget.dart';

class homepage extends StatelessWidget {
  const homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final dummyList=List.generate(20, (index) => CatalogModel.items[0]);
    
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("Catalog App",),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ItemWidget(item:dummyList[index]);
          },
          itemCount: dummyList.length,),
      ),
    drawer: myDrawer(),
    )  
    ;
  }
}