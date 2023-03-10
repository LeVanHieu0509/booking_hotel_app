import 'package:flutter/material.dart';
import 'package:meal_app/page/introdution/index.dart';
import 'package:meal_app/page/passport/login.dart';
import 'package:meal_app/page/passport/register.dart';
import 'package:meal_app/page/profile/info_profile.dart';
import 'package:meal_app/screens/categories_sreen.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/screens/meal_detail_creen.dart';
import 'package:meal_app/screens/tabs_screen.dart';
import 'package:meal_app/section/navigator_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.amber,
          // brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],

          // Define the default `TextTheme`. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: const TextTheme(
            displayLarge:
                TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            titleLarge: TextStyle(fontSize: 16.0, fontStyle: FontStyle.normal),
            bodyMedium: TextStyle(fontSize: 12.0, fontFamily: 'FWD'),
          ),
          fontFamily: 'FWD'),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => IntroductionScreen(),
        Register.routeName: (context) => const Register(),
        Login.routeName: (context) => const Login(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        Profile.routeName: (context) => Profile(),
        BottomTabScreen.routeName: (context) => BottomTabScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => CategoryMealsScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoryScreen());
      },
    );
  }
}
