import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinity_explorer/cubits/app_state.dart';
import 'package:infinity_explorer/helpers/dio_helper.dart';

class InfinityCubit extends Cubit<InfinityState> {
  InfinityCubit() : super(InfinityInitialState());

  static InfinityCubit get(context) => BlocProvider.of(context);

  List<dynamic> astronomy = [];

  void getAstronomy() {
    emit(InfinityGetAstronomyLoadingState());
    if (astronomy.isEmpty) {
      DioHelper.getData(
          url: "planetary/apod/",
          query: {
            "count" : "3",
            "apikey" : "xqx9FyJ7gpYUYvfOLVr3nKdpLGpONdlKe4ejPXAk"
          },).then((value) {
        astronomy = value!.data;
        print(astronomy[0]["date"]);
        emit(InfinityGetAstronomySuccessState());
      }).catchError((error){
        emit(InfinityGetAstronomyErrorState(error.toString()));
      });
    }
    else{
      emit(InfinityGetAstronomySuccessState());
    }
  }
}