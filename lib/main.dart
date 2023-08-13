import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constant.dart';
import 'core/utils/app_router.dart';
bool show = true;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: kPrimaryColor,
      textTheme:
      GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ) );
  }
}