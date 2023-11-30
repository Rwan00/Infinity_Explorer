import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../cubits/app_cubit.dart';
import '../cubits/app_state.dart';
import '../widgets/build_list.dart';

class DayAstronomy extends StatelessWidget {
  const DayAstronomy({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfinityCubit, InfinityState>(

      builder: (context, state) {
        var businessList = InfinityCubit.get(context).astronomy;

        return Scaffold(body: BuildList(itemsList: businessList, isSearch: false,));
      },
    );
  }
}
