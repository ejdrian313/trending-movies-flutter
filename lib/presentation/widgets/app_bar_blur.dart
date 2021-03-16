import 'dart:ui';

import 'package:flutter/material.dart';

class AppBarBlur {
  static AppBar build(String title, {bool popUntilBase, BuildContext context}) {
    return AppBar(
      backgroundColor: Colors.black54.withOpacity(0.5),
      elevation: 0,
      brightness: Brightness.light,
      flexibleSpace: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        showCloseAll(popUntilBase, context)
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () =>
                      Navigator.popUntil(context, ModalRoute.withName('/')),
                  child: Icon(Icons.close),
                ),
              )
            : SizedBox.shrink()
      ],
    );
  }

  static bool showCloseAll(bool popUntilBase, BuildContext context) => popUntilBase == true && context != null;
}
