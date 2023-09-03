import 'package:flutter/material.dart';

import '../../../../../core/utils/gaps.dart';
import '../../../../../core/utils/styles.dart';
class InformationProfile extends StatelessWidget {
  const InformationProfile(
      {Key? key,
        required this.iconData,
        required this.primaryText,
        required this.secendryText})
      : super(key: key);
  final Widget iconData;
  final String primaryText, secendryText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: Center(
                child: iconData,
              ),
            ),
            Gaps.hGap20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  primaryText,
                  style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff181C2E)),
                ),
                Gaps.vGap10,
                Text(
                  secendryText,
                  style: Styles.textStyle14
                      .copyWith(color: const Color(0xffA0A5BA)),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}