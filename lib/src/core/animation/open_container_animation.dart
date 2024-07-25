import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class OpenContainerAnimation extends StatelessWidget {
  final Widget closedChild;
  final Widget openChild;

  const OpenContainerAnimation({
    super.key,
    required this.closedChild,
    required this.openChild,
  });

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      closedBuilder: (context, action) => closedChild,
      openBuilder: (context, action) => openChild,
    );
  }
}
