import 'package:flutter/material.dart';

class LoadingSafeArea extends StatelessWidget {
  const LoadingSafeArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text('Loading '));
  }
}