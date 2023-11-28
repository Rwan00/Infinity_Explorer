
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

import 'astronomy_item.dart';
import 'divider.dart';


class BuildList extends StatelessWidget {
  const BuildList({
    super.key,
    required this.itemsList,
    required this.isSearch,
  });

  final List itemsList;
  final bool isSearch;

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: itemsList.isNotEmpty,
      builder: (context) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>  AstronomyItem(itemsList[index]),
          separatorBuilder: (context, index) => separator(context),
          itemCount: itemsList.length,
        );
      },
      fallback: (context) => isSearch? Container() :const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}