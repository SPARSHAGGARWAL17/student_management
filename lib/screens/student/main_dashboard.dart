import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:student_management/export.dart';
import '../../modals/dummy_data.dart';

class StudentMainPage extends StatefulWidget {
  static const Route = '/student-mainpage';

  @override
  _StudentMainPageState createState() => _StudentMainPageState();
}

class _StudentMainPageState extends State<StudentMainPage> {
  ScrollController _controller = ScrollController();
  List<String> keys = data[0].keys.toList();
  int selected = 0;
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
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NavigationRail(
                extended: opened,
                selectedLabelTextStyle: textTheme(context).bodyText1.copyWith(
                      color: Colors.blue,
                    ),
                onDestinationSelected: (value) {
                  print(value);
                  setState(() {
                    selected = value;
                  });
                },
                destinations: [
                  NavigationRailDestination(
                    icon: Icon(FontAwesomeIcons.calendar),
                    label: Text(
                      'Attendance',
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                      FontAwesomeIcons.chartBar,
                      size: 30,
                    ),
                    label: Text(
                      'Marks',
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Icon(
                      FontAwesomeIcons.user,
                      size: 30,
                    ),
                    label: Text(
                      'Profile',
                    ),
                  )
                ],
                selectedIndex: selected,
              ),
              Container(
                height: double.infinity,
                child: Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Scrollbar(
                    isAlwaysShown: true,
                    controller: _controller,
                    child: SingleChildScrollView(
                      controller: _controller,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sparsh Aggarwal',
                            style: textTheme(context).headline6.copyWith(
                                  fontSize: 20,
                                ),
                          ).m15v,
                          Table(
                            // border: TableBorder.all(width: 0.5),
                            children: [
                              for (var i = 0; i < data.length; i++)
                                TableRow(
                                  decoration: BoxDecoration(
                                    color:
                                        i != 0 ? Colors.white : Colors.blue[50],
                                    borderRadius: i != 0
                                        ? BorderRadius.all(Radius.zero)
                                        : BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                  ),
                                  children: [
                                    for (var j = 0; j < keys.length; j++)
                                      Text('${i != 0 ? data[i][keys[j]] : keys[j]}')
                                          .m15h
                                          .m15v,
                                  ],
                                ),
                            ],
                          ).m15v,
                          // StreamBuilder(
                          //   stream: FirebaseFirestore.instance
                          //       .collection('/department')
                          //       .snapshots(),
                          //   builder: (context, snapshot) {
                          //     return Text(snapshot.data);
                          //   },
                          // )
                        ],
                      ),
                    ),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 100, vertical: 40),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
