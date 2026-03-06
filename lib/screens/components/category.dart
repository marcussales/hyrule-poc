import 'package:flutter/material.dart';
import 'package:hyrule/screens/results.dart';
import 'package:hyrule/utils/consts/category_data_consts.dart';

class Category extends StatelessWidget {
  final String category;
  const Category({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Results(category: category)));
          },
          child: Ink(
            child: Center(
              child: Image.asset('$imagePath/${category.toLowerCase()}.png'))
          ),
        ),
        const SizedBox(height: 12),
        Text(categoriesMap[category]!),
      ],
    );
  }
}