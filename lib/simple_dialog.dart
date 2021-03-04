import 'package:flutter/material.dart';

void simpleDialog(BuildContext context, Widget shownContainer) {
  showDialog(
    context: context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
      child: shownContainer,
    ),
  );
}
