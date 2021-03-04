import 'package:flutter/material.dart';

void animatedDialog(BuildContext context, Widget shownContainer) {
  showGeneralDialog(
    context: context,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionBuilder: (context, a1, a2, widget) {
      return Transform.scale(
        scale: a1.value,
        child: Opacity(
          opacity: a1.value,
          child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            child: shownContainer,
          ),
        ),
      );
    },
    transitionDuration: Duration(milliseconds: 200),
    barrierDismissible: true,
    barrierLabel: '',
    pageBuilder: (context, animation1, animation2) {},
  );
}
