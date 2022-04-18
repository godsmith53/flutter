import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter1/models/catalog.dart';
import 'package:flutter1/widgets/drawer.dart';
import 'package:flutter1/widgets/item_widget.dart';

class homepage extends StatefulWidget {
  const homepage({ Key? key }) : super(key: key);

  @override 
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState(){
    //TODO:implement init state
    super.initState();
    loadData();
  }
  loadData() async{
    final catalogJson= await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData= decodeData["products"];
    
  }


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