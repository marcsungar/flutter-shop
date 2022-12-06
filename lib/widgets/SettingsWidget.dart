
import 'package:flutter/material.dart';
import 'package:flutter_shop/objects/SettingsObject.dart';

class SettingsWidget{

  static Widget options(BuildContext context, String title,double space, Function click) {

    return InkWell(
      onTap: click,
      child: Container(
      margin: EdgeInsets.only( left: 32, top: 20),
        child: Row(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54
                ),
              ),
              Container(
                width: space,
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.green,
                ),
              ),
            ]
        ),
      ),
    );
  }

  static Widget settingsList(List<SettingsObject> settings){
    var settingsd = settings
        .map((e) => options(e.context, e.title,e.space, e.click)).toList();

    return Column(
        children: settingsd,
    );
  }
}
