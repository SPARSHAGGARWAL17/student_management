import 'package:flutter/material.dart';
import 'package:student_management/export.dart';

class LoginCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Function onTap;
  const LoginCard({Key key, this.title, this.imageUrl, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      // autofocus: true,
      onTap: onTap,
      hoverColor: Colors.blue[200],
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 7),
        height: 270,
        child: Card(
          elevation: 3,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageUrl,
                height: 200,
                width: 200,
              ),
              Text(
                title,
                style: textTheme(context).headline6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
