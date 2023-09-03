import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/gaps.dart';
import '../../../../../core/utils/styles.dart';
class ContainerOfInformationProfile extends StatelessWidget {
  const ContainerOfInformationProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 272,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
            ),
            child: Image.asset(AssetsData.person1),
          ),
          Column(
            children: [
              Text(
                'Vishal Khadok',
                style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff181C2E)),
              ),
              Gaps.vGap10,
              Text(
                'I love fast food',
                style:
                Styles.textStyle14.copyWith(color: const Color(0xffA0A5BA)),
              )
            ],
          )
        ],
      ),
    );
  }
}