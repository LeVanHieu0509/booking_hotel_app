import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meal_app/page/profile/edit_profile.dart';
import 'package:meal_app/screens/categories_sreen.dart';
import 'package:meal_app/widgets/button.dart';
import 'package:meal_app/widgets/number.dart';
import 'package:meal_app/page/section/profile.dart';

class Profile extends StatelessWidget {
  static const routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
          actions: [
            InkWell(
              onTap: () {
                //send report to school management, in case if you want some changes to your profile
              },
              child: Container(
                padding: EdgeInsets.only(right: 5 / 2),
                child: Row(
                  children: [
                    Icon(Icons.report_gmailerrorred_outlined),
                    Text(
                      'Report',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 24),
            ProfileWidget(
              imagePath:
                  "https://scontent.fsgn5-8.fna.fbcdn.net/v/t39.30808-6/302197860_126991150081909_720926876300708631_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=ypqpv9VCK-MAX9Xru5B&_nc_ht=scontent.fsgn5-8.fna&oh=00_AfCweyEUR4DAk9y1G0rYMO-BhmXxvr322ZQPHVIHjQMEqg&oe=6411D529",
              onClicked: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
            ),
            const SizedBox(height: 24),
            buildName(),
            const SizedBox(height: 24),
            Center(child: buildUpgradeButton(context)),
            const SizedBox(height: 24),
            NumbersWidget(),
            const SizedBox(height: 48),
            buildAbout(),
          ],
        ));
  }
}

Widget buildName() => Column(
      children: [
        Text(
          "Le Van Hieu",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 4),
        Text(
          "LeVanHieu2001@gmail.com",
          style: TextStyle(color: Colors.grey),
        )
      ],
    );

Widget buildUpgradeButton(BuildContext context) => ButtonWidget(
      text: 'Edit Profile',
      onClicked: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EditProfilePage()),
        );
      },
    );

Widget buildAbout() => Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Text(
            "Hiếu là một học sinh ngoan ngoãn, không cãi lời Thầy cô và bạn bè, đặc biệt Hiếu yêu màu tím và ghét sự giả dối.",
            style: TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
