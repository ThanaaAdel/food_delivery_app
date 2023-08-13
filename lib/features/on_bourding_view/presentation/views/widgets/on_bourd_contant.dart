import 'package:flutter/material.dart';
import '../../../../../constant.dart';
class OnBourdContant extends StatelessWidget {
  const OnBourdContant({Key? key, required this.image, required this.title, required this.description}) : super(key: key);
final String image , title , description ;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        Image.asset(height: 350, image),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(fontWeight: FontWeight.w700,
              color: Colors.black,fontSize: 24),
        ),
        const SizedBox(
          height: 16,
        ),
         Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(color: kTextColor,fontSize: 16),
        ),
        const SizedBox(height: 30,),




      ],
    );
  }
}

