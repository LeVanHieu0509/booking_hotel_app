import 'package:flutter/material.dart';
import 'package:meal_app/page/profile/edit_profile.dart';
import 'package:meal_app/widgets/button.dart';
import 'package:meal_app/widgets/number.dart';
import 'package:meal_app/section/profile.dart';

class Profile extends StatefulWidget {
  static const routeName = "/profile";
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<Profile> {
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
            "Hi???u l?? m???t h???c sinh ngoan ngo??n, kh??ng c??i l???i Th???y c?? v?? b???n b??, ?????c bi???t Hi???u y??u m??u t??m v?? gh??t s??? gi??? d???i.",
            style: TextStyle(fontSize: 16, height: 1.4),
          ),
        ],
      ),
    );
