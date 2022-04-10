
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/ui/add_bottom_sheet.dart';
import 'package:to_do/ui/settings/settings.dart';
import 'package:to_do/ui/tasks_list/tasks.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),

        ),

        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomAppBar(


            shape: CircularNotchedRectangle(),
            notchMargin: 8,
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index){
                setState(() {
                  currentIndex = index;
                });

              },
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.list),label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: ''),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ addBottomSheet();},
        shape: StadiumBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.onPrimary,
            width: 4
          )
        ),
        child: Icon(Icons.add),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       body: tabs[currentIndex],



    );
  }
  List<Widget> tabs = [
    Tasks(),Settings()
  ];
  void addBottomSheet(){
    showModalBottomSheet(context: context, builder: (BuildContext){
      return AddSheet();
    });
  }
}
