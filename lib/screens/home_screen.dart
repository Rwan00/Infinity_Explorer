import 'package:flutter/material.dart';

import '../methods/nav_method.dart';
import 'astronomy_of_the_day.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: (){navigateTo(context,DayAstronomy());},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
