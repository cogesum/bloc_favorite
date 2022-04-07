import 'package:bloc/bloc.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteInitialState()) {
    on<OnPressedFavoriteEvent>(
        ((event, emit) => emit(FavoriteState(index: 1))));
    on<OnPressedWordEvent>(((event, emit) => emit(FavoriteState(index: 0))));
  }
}
