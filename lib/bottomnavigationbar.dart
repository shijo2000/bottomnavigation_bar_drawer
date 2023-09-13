import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}


class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int selectedIndex = 0;
  static const List<Widget> widgetOption= [

    Text('Home Page',
      style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w600
      ),
    ),
    Text('Search PAge',
      style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w600
      ),
    ),
    Text('Create',
      style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w600
      ),
    ),
    Text('Reels',
      style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w600
      ),
    ),
    Text('Profile Page',
      style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w600
      ),
    ),
  ];
  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Instagram',style: TextStyle(fontStyle: FontStyle.italic),),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: widgetOption.elementAt(selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem> [
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.home
                  ),
                  label: 'Home',
                  backgroundColor: Colors.pink
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Search',
                  backgroundColor: Colors.green
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.add
                  ),
                  label: 'Person',
                  backgroundColor: Colors.blue
              ),
              BottomNavigationBarItem(
                icon: Icon(
                    Icons.video_call
                ),
                label: 'Reels',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                      Icons.person
                  ),
                  label: 'Search',
                  backgroundColor: Colors.black
              ),

            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: selectedIndex,
            selectedItemColor: Colors.blue,
            iconSize: 40,
            onTap: onItemTapped,
            elevation: 5,
            ),
        );
    }
}