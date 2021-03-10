import 'package:flutter/material.dart';

class ErrorSafeArea extends StatelessWidget {
  const ErrorSafeArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text('Error '));
  }
}