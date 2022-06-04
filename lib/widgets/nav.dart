import 'package:flutter/material.dart';
import 'package:lox/ui/appointment/appointment.dart';
import 'package:lox/ui/profile.dart';
import 'package:lox/ui/search.dart';
import 'package:lox/utils/colors.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

int _currentIndex = 0;
List<Widget> _children = [];

class _NavState extends State<Nav> {
  @override
  void initState() {
   _children = [Container(),Search(),AppointmentPage(),Profile()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.white,
      body: IndexedStack(index: _currentIndex, children: _children),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.color2,
        unselectedItemColor: Colors.grey,

        selectedLabelStyle: const TextStyle(
          // fontFamily: gtwalsheimregular,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          // color: AppColors.color13
        ),
        backgroundColor: AppColors.white,
        selectedFontSize: 14,
        elevation: 2.0,

        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: tabItem,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house),

            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),


            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),

  
            label: "Appointment",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),

     
            label: "Profile",
          )
        ],
      ),
    );
  }

  void tabItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
