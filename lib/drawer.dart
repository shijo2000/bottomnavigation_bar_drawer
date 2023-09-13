import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle ='Drawer';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: appTitle,
      ),
    );
  }
}
class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    required this.title,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(
    fontSize: 30,fontWeight: FontWeight.w200,
  );
  static const List _widgetOption = [
    Text(
      ' Home',
      style: optionStyle,
    ),
    Text(
      ' inbox',
      style: optionStyle,
    ),
    Text(
      ' All inboxes',
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            widget.title,
          ),
        ),
        body: Center(
          child: _widgetOption[_selectedIndex],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child:
                  Text('Gmail',style: TextStyle(
                    fontSize: 30,fontStyle: FontStyle.italic,color: Colors.white,
                  ),)),
              ListTile(
                tileColor: Colors.purpleAccent,
                title: const Text('Home'),
                selected: _selectedIndex == 0,
                onTap: (){
                  _onItemTapped(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                tileColor: Colors.pinkAccent,
                title: const Text('Inbox'),
                selected: _selectedIndex == 1,
                onTap: (){
                  _onItemTapped(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                tileColor: Colors.orange,
                title: const Text(' All Inbox'),
                selected: _selectedIndex == 2,
                onTap: (){
                  _onItemTapped(2);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        );
    }
}