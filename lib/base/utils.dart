import 'package:flutter/material.dart';

class Utils {
  static Future navigatePage(BuildContext context, Widget widget) async {
    return await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => widget,
    ));
  }
}
