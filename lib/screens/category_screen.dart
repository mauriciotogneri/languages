import 'package:Languages/json/json_category.dart';
import 'package:Languages/widgets/entry_row.dart';
import 'package:dafluta/dafluta.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  final JsonCategory category;

  const CategoryScreen(this.category);

  static PageRouteBuilder<CategoryScreen> instance(JsonCategory category) =>
      LeftRightRoute<CategoryScreen>(CategoryScreen(category));

  @override
  Widget build(BuildContext context) {
    return DarkStatusBar(
      child: Scaffold(
        appBar: AppBar(
          title: Text(category.name),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemBuilder: (context, position) =>
                EntryRow(category.values[position]),
            itemCount: category.values.length,
          ),
        ),
      ),
    );
  }
}
