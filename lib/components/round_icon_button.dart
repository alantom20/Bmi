import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    required this.icon,
    required this.onPress,
    this.onLongPress,
    this.onLongPressUp,
  });
  final IconData? icon;
  final VoidCallback? onPress;
  final VoidCallback? onLongPress;
  final VoidCallback? onLongPressUp;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      onLongPressUp: onLongPressUp,
      child: RawMaterialButton(
        elevation: 0.0,
        child: Icon(icon),
        onPressed: onPress,
        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
      ),
    );
  }
}
