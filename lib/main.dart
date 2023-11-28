import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinity_explorer/screens/astronomy_of_the_day.dart';
import 'package:infinity_explorer/screens/home_screen.dart';

import 'bloc_observer.dart';
import 'cubits/app_cubit.dart';
import 'helpers/dio_helper.dart';

void main() {


  Bloc.observer = SimpleBlocObserver();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> InfinityCubit(),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(12, 19, 79,1),
          appBarTheme: const AppBarTheme(
              titleSpacing: 20,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Color.fromRGBO(92, 70, 156,1),
                statusBarIconBrightness: Brightness.light,
              ),
              backgroundColor: Color.fromRGBO(92, 70, 156,1),
              elevation: 0,
              titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              iconTheme: IconThemeData(color: Colors.white)),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.orangeAccent,
              elevation: 20),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            bodySmall: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            primary: const Color.fromRGBO(212, 173, 252,1),),
          //useMaterial3: true,
        ),
        home: const BusinessScreen(),
      ),
    );
  }
}

