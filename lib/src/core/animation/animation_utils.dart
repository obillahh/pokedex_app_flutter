import 'package:flutter/material.dart';
import 'open_container_animation.dart';

class AnimationUtils {
  static Widget openContainer({required Widget closedChild, required Widget openChild}) {
    return OpenContainerAnimation(closedChild: closedChild, openChild: openChild);
  }
}
