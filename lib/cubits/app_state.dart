abstract class InfinityState{}

class InfinityInitialState extends InfinityState{}
class InfinityGetAstronomyLoadingState extends InfinityState{}
class InfinityGetAstronomySuccessState extends InfinityState{}
class InfinityGetAstronomyErrorState extends InfinityState{
  final String error;
  InfinityGetAstronomyErrorState(this.error);
}