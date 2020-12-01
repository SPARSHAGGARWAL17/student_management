import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:student_management/const.dart';
import 'package:student_management/export.dart';

class LoginPage extends StatefulWidget {
  static const Route = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool init = false;
  String title = '';
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!init) {
      init = true;
      title = ModalRoute.of(context).settings.arguments;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarContainer(),
      appBar: AppBar(
        title: Text(
          'Login ($title)',
          style: textTheme(context).headline5.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.white,
        alignment: Alignment.center,
        child: Container(
          width: 300,
          // width: double.infinity,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Details',
                style: textTheme(context).headline5,
              ),
              CustomTextField(
                label: 'Enter Email',
              ).m15v,
              CustomTextField(
                label: 'Enter Password',
              ),
              RaisedButton(
                color: Colors.blue,
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                onPressed: () {},
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ).m15v,
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final String Function(String) validator;

  const CustomTextField({Key key, this.label, this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      showCursor: true,
      expands: false,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
