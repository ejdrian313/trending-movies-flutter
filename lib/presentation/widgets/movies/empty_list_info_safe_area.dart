import 'package:flutter/material.dart';

class EmptyListInfoSafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text('Empty list of movies :('),
    );
  }
}
