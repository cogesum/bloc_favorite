part of "favorite_bloc.dart";

class FavoriteState {
  int index;
  FavoriteState({required this.index});
}

class FavoriteInitialState extends FavoriteState {
  FavoriteInitialState() : super(index: 0);
}
