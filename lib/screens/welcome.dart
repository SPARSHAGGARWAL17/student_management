import 'package:flutter/material.dart';
import 'package:student_management/export.dart';

class WelcomePage extends StatelessWidget {
  static const Route = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      bottomNavigationBar: BottomBarContainer(),
      appBar: AppBar(
        title: Text(
          'Student Management',
          style: textTheme(context).headline5.copyWith(color: Colors.white),
        ),
      ),
      body: Container(
        // color: Colors.blue[100],
        width: double.infinity,
        alignment: Alignment.center,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginCard(
              title: 'Teacher',
              onTap: () {
                Navigator.of(context)
                    .pushNamed(LoginPage.Route, arguments: 'Teacher');
              },
              imageUrl: 'assets/images/teacher.png',
            ),
            SizedBox(
              width: 40,
            ),
            LoginCard(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(LoginPage.Route, arguments: 'Student');
              },
              title: 'Student',
              imageUrl: 'assets/images/student.png',
            ),
          ],
        ),
      ),
    );
  }
}

class BottomBarContainer extends StatelessWidget {
  const BottomBarContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.white,
      child: Image.asset(
        'assets/images/Cmrit.png',
        cacheHeight: 100,
        width: 100,
      ),
    );
  }
}
