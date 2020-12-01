import 'package:flutter/material.dart';

extension Margin on Widget {
  Container get m15v => Container(
        margin: EdgeInsets.symmetric(vertical: 15),
        child: this,
      );
  Container get m15h => Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: this,
      );
}
