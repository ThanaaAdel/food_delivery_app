import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.title, this.functionFromButton,

  });
  final String title;
  final Function? functionFromButton;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.08,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8),
            onPressed: () {
              functionFromButton;
            },
            child:  Text(title, style: const TextStyle(fontSize: 20)),
          ),
        ),
      );
  }
}
