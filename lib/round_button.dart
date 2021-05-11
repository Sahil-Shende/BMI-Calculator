import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';

class RoundButton extends StatelessWidget {
  RoundButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () async {
        onPressed();
        Vibration.vibrate(
          amplitude: 5,
          duration: 5,
        );
      },
      shape: CircleBorder(),
      fillColor: Color(0xFF4C455E),
      constraints: BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
