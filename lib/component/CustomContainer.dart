import 'package:flutter/material.dart';
import 'package:vpnapp/constants/colorConstant.dart';

class CustomConrainer extends StatelessWidget {
  const CustomConrainer({
    Key? key,
    this.borderRadius = 10.0,
    this.color = KPrimaryColor,
    this.borderColor = KPrimaryBorder,
    required this.child,
    this.padding = const EdgeInsets.all(10),
  }) : super(key: key);
  final double borderRadius;
  final Color color;
  final Color borderColor;
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: 3),
      ),
      child: child,
    );
  }
}
