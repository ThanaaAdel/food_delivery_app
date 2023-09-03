import 'package:flutter/material.dart';
class AddNewItemsBodyView extends StatelessWidget {
  const AddNewItemsBodyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(child:
      Text('Add New Items',style:TextStyle(color: Colors.black,fontSize: 50),),
      ),
    );
  }
}
