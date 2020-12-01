import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:student_management/const.dart';

class StudentMainPage extends StatefulWidget {
  static const Route = '/student-mainpage';

  @override
  _StudentMainPageState createState() => _StudentMainPageState();
}

class _StudentMainPageState extends State<StudentMainPage> {
  bool opened = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            opened = !opened;
            setState(() {});
          },
        ),
        title: Text(
          'Dashboard',
          style: textTheme(context).headline5.copyWith(
                color: Colors.white,
              ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            NavigationRail(
              extended: opened,
              selectedLabelTextStyle: textTheme(context).bodyText1.copyWith(
                    color: Colors.blue,
                  ),
              onDestinationSelected: (value) {
                print(value);
              },
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.calendar_today),
                  label: Text(
                    'Attendance',
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.bar_chart_rounded,
                    size: 30,
                  ),
                  label: Text(
                    'Marks',
                  ),
                ),
                NavigationRailDestination(
                  icon: Icon(
                    Icons.account_circle_rounded,
                    size: 30,
                  ),
                  label: Text(
                    'Profile',
                  ),
                )
              ],
              selectedIndex: 0,
            )
          ],
        ),
      ),
    );
  }
}
