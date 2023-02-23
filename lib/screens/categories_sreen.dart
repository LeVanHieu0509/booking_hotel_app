import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_app/widgets/category_item.dart';
import 'package:meal_app/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map((catData) =>
                CategortyItem(catData.id, catData.title, catData.color))
            .toList(),
        // Là một lớp xác định sẵn, cho phép cấu tạo layout trong lớp này
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //Phạm vi chiều rộng tối da, nếu màn hình là 500 thì có 2 item nằm cạnh nhau

          maxCrossAxisExtent: 300,
          //Chiều rộng là 200, chiều dài là 300
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
