import 'dart:io';
import 'package:flutter/material.dart';
import 'package:meal_app/page/profile/info_profile.dart';
import 'package:meal_app/section/profile.dart';
import 'package:meal_app/widgets/button.dart';
import 'package:meal_app/widgets/text_field.dart';
import 'package:path/path.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        children: [
          const SizedBox(height: 12),
          ProfileWidget(
            imagePath:
                "https://scontent.fsgn5-8.fna.fbcdn.net/v/t39.30808-6/302197860_126991150081909_720926876300708631_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=ypqpv9VCK-MAX9Xru5B&_nc_ht=scontent.fsgn5-8.fna&oh=00_AfCweyEUR4DAk9y1G0rYMO-BhmXxvr322ZQPHVIHjQMEqg&oe=6411D529",
            isEdit: true,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Full Name',
            text: "name",
            onChanged: (name) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'Email',
            text: "email",
            onChanged: (email) {},
          ),
          const SizedBox(height: 24),
          TextFieldWidget(
            label: 'About',
            text: "about",
            maxLines: 5,
            onChanged: (about) {},
          ),
          const SizedBox(height: 24),
          ButtonWidget(
            text: 'Save',
            onClicked: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          )
        ],
      ),
    ));
  }
}
