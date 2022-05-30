import'package:flutter/material.dart'; 

import 'package:appcomida/src/tabs/explore_tabs.dart';
import 'package:appcomida/src/tabs/favourite_tab.dart';
import 'package:appcomida/src/tabs/my_order_tab.dart';


class TabsPage extends StatefulWidget{
  TabsPage({Key key}):super(key:key);
  @override
  _TabsPageState createState()=>_TabsPageState();
}
class _TabsPageState extends State<TabsPage>{

  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab()
  ];

   int _selectedItemIndex = 0;

   void _cambiarWidget(int index){
    setState((){
      _selectedItemIndex = index;
    });
}
                          

 @override
  Widget build(BuildContext context){
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedItemIndex),
bottomNavigationBar:_bottomNavigationBar(context),
);// Scaffold
}

Widget _bottomNavigationBar(BuildContext context){
return BottomNavigationBar(
  iconSize:30.0,
selected ItemColor:Theme.of(context).accentColor,
unselectedItemColor:Colors.grey,
currenIndex: _selectedItemIndex,
showUnselectedLabels: true,
onTap: _cambiarWidget,
items:<BottomNavigationBarItem>[
Bottom NavigationBarItem(
 icon:Icon(Icons.explore),
 Label:'Explore'
),// BottomNavigationBaritem
BottomNavigationBarItem(
           (Icons.assignment),icon:Icon
  label:'My Order'
),// BottomNavigationBarItem
BottomNavigationBarItem(
  icon:Icon(Icons.book),
  Label:'Favourite'
),// BottomNavigationBarItem
BottomNavigationBarItem(
  icon:Icon(Icons.person_pin),
  Label:'Profile'
      )// BottomNavigationBarItem
    ]//<BottomNavigationBarItem>[]
  );// BottomNavigationBar
}