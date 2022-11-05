import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:podcast/modules/downloads.dart';
import 'package:podcast/modules/explore.dart';
import 'package:podcast/modules/home.dart';
import 'package:podcast/modules/profile.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  int _selectedScreenIndex=0;



  @override
  Widget build(BuildContext context) {

List<Widget> screens=[
  const Home(),
  const explore(),
  const downloads(),
  const profile(),
];

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
automaticallyImplyLeading: false,
        toolbarHeight: 70,
        leadingWidth:double.infinity,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20,top: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(child: SvgPicture.asset('lib/images/mic.svg', width: 80,)),
              const Text('Podcast',style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12
              ),)
            ],
          ),
        ),

        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 20,top: 20),
            child: Container(
              child: Align(
                child: Container(
                  height: 25,
                  width: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Colors.green,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(15,),),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 5,right: 5),
                        child: Text('JOIN',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                      ),
                    )),
              ),
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 20
        ),
        child: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: const LinearGradient(
                  colors: [Colors.blueGrey, Colors.grey],
                  begin: FractionalOffset(1.0, 3.0),
                  end: FractionalOffset(1, 0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp
              ),
            ),

          child: BottomNavigationBar(
            currentIndex: _selectedScreenIndex,
            unselectedLabelStyle: const TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.w500
            ),
            selectedItemColor: Colors.white,
            unselectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Colors.transparent,
            items: const [
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home_filled,size: 25),
                  icon: Icon(Icons.home_outlined,size: 25,),
                  label: 'Home'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.explore,size: 25),
                  icon: Icon(Icons.explore_outlined,size: 25,),
                  label: 'Explore'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.download_sharp,size: 25),
                  icon: Icon(Icons.download_outlined,size: 25,),
                  label: 'Downloads'),
              BottomNavigationBarItem(
                  activeIcon: Icon(Icons.account_circle,size: 25),
                  icon: Icon(Icons.account_circle_outlined,size: 25,),
                  label: 'Profile'),
            ],
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            onTap: _selectScreen,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: screens[_selectedScreenIndex],
      ),


    );


  }
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }
}
