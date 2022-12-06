import 'package:flutter/material.dart';

class SettingsObject{
  BuildContext context;
  String title;
  double space;
  Function click;

  SettingsObject(this.context, this.title, this.space, this.click);
}