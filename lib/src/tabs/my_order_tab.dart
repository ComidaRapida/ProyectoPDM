import'package:flutter/material.dart';
class MyOrderTab extends StatefulWidget{
 MyOrderTab({Key key}):super(key:key);
 @override
 _MyOrderTabState createState() => _MyOrderTabState();
}
class MyOrder TabState extends State<MyOrderTab>{
  @doverride
 Widget build(BuildContext context){
    return Center(
      child:Container(
         child:Text('My Order'),
     ),// Container
     );// Center
 }
 }