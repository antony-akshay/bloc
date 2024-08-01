import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<LikeButtonClickedEvent>((event, emit) {
      final currentState = state as HomeInitial;
      emit(HomeInitial(button: !currentState.button));
    });
  }
}
