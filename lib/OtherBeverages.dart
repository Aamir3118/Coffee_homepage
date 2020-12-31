import 'package:CCD/menuitem/menuitemcardob.dart';
import 'package:flutter/material.dart';
import 'model/coffeemodelob.dart';

class otherbeverages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
          itemCount: menu.length,
          itemBuilder: (context, int key) {
            return menuitemcardob(index: key);
          }),
    );
  }
}
