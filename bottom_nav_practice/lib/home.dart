import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _selectedIndex = 0;
   PageController pageController = PageController();

   void _onItemTapped(int index) {
     setState(() {
       _selectedIndex = index;
     });
     pageController.jumpToPage(index);
   }

   void _onPageChanged(int page) {
     setState(() {
       _selectedIndex=page;
     });
   }


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GFG'),),
      body: PageView(
        controller: pageController,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue)
        ],
        onPageChanged: _onPageChanged,
      ),

      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            )
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,

      ),
    );
  }
}
