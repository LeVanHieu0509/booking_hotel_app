import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_app/page/profile/info_profile.dart';
import 'package:meal_app/screens/categories_sreen.dart';
import 'package:meal_app/screens/category_meals_screen.dart';
import 'package:meal_app/widgets/common_card.dart';
import 'package:meal_app/widgets/tab_button.dart';

class BottomTabScreen extends StatefulWidget {
  static final routeName = "/home";
  @override
  _BottomTabScreenState createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isFirstTime = true;
  Widget _indexView = Container();
  BottomBarType bottomBarType = BottomBarType.Explore;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(milliseconds: 400), vsync: this);
    _indexView = Container();
    WidgetsBinding.instance!.addPostFrameCallback((_) => _startLoadScreen());
    super.initState();
  }

  Future _startLoadScreen() async {
    await Future.delayed(const Duration(milliseconds: 480));
    setState(() {
      _isFirstTime = false;
      _indexView = CategoryScreen(
          // animationController: _animationController,
          );
    });
    _animationController..forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: Container(
            height: 63 + MediaQuery.of(context).padding.bottom,
            child: getBottomBarUI(bottomBarType)),
        body: _isFirstTime
            ? Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              )
            : _indexView,
      ),
    );
  }

  void tabClick(BottomBarType tabType) {
    if (tabType != bottomBarType) {
      bottomBarType = tabType;
      _animationController.reverse().then((f) {
        if (tabType == BottomBarType.Explore) {
          setState(() {
            _indexView = CategoryScreen(
                // animationController: _animationController,
                );
          });
        } else if (tabType == BottomBarType.Trips) {
          setState(() {
            _indexView = CategoryScreen(
                // animationController: _animationController,
                );
          });
        } else if (tabType == BottomBarType.Profile) {
          setState(() {
            _indexView = Profile(
                // animationController: _animationController,
                );
          });
        } else if (tabType == BottomBarType.Favorite) {
          setState(() {
            _indexView = CategoryScreen(
                // animationController: _animationController,
                );
          });
        }
      });
    }
  }

  Widget getBottomBarUI(BottomBarType tabType) {
    return CommonCard(
      color: Theme.of(context).colorScheme.background,
      radius: 0,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              TabButton(
                icon: Icons.home_outlined,
                isSelected: tabType == BottomBarType.Explore,
                text: "Home",
                onTap: () {
                  tabClick(BottomBarType.Explore);
                },
              ),
              TabButton(
                icon: Icons.dashboard_outlined,
                isSelected: tabType == BottomBarType.Trips,
                text: "Trips",
                onTap: () {
                  tabClick(BottomBarType.Trips);
                },
              ),
              TabButton(
                icon: FontAwesomeIcons.heart,
                isSelected: tabType == BottomBarType.Favorite,
                text: "Favorite",
                onTap: () {
                  tabClick(BottomBarType.Favorite);
                },
              ),
              TabButton(
                icon: FontAwesomeIcons.user,
                isSelected: tabType == BottomBarType.Profile,
                text: "Profile",
                onTap: () {
                  tabClick(BottomBarType.Profile);
                },
              ),
            ],
          ),
          // SizedBox(
          //   height: MediaQuery.of(context).padding.bottom,
          // )
        ],
      ),
    );
  }
}

enum BottomBarType { Explore, Trips, Profile, Favorite }
