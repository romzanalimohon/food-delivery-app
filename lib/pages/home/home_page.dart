import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/cart/cart_history.dart';
import 'package:food_delivery_app/pages/home/main_food_page.dart';
import 'package:food_delivery_app/utils/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;


  List pages = [
    MainFoodPage(),
    Container(child: Center(child: Text('next page')),),
    CartHistory(),
    Container(child: Center(child: Text('next next next page')),)
  ];

  void onTapNav(int index){
    setState(() {
      _selectedIndex=index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColor.mainColor,
        unselectedItemColor: Colors.amberAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        currentIndex: _selectedIndex,
        onTap: onTapNav,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,),
              label: "home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.archive,),
              label: "history"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,),
              label: "cart"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,),
              label: "me"
          ),
        ],
      ),
    );
  }



}
