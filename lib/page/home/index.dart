import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('images/banner_home.png'),
              Container(
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  width: 200,
                  // height: 30,
                  // color: Color.fromARGB(255, 233, 233, 199).withOpacity(0.5),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    child: GestureDetector(
                      onTap: () {},
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w100, height: 1.7),
                          contentPadding: EdgeInsets.only(left: 25),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 50, minHeight: 0),
                        ),
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
