import 'package:flutter/material.dart';

import '../../../../../constant.dart';
class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key,  this.isActive = false}) : super(key: key);
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 10,
        width: 10,

        decoration:  BoxDecoration(
          color:isActive  ? kOnBourdingOrangeActive : kOnBourdingOrangeNotActive,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),

      ),
    );
  }
}
