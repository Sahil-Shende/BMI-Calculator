import 'package:flutter/cupertino.dart';
import 'package:vibration/vibration.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({@required this.color, this.child, this.onTap});

  final Widget child;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
        Vibration.vibrate(
          amplitude: 5,
          duration: 5,
        );
      },
      child: Container(
        child: child,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
