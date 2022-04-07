part of 'chip_bloc.dart';

class ChipState {
  List<Chips> chips;
  List<Chips> chipsSelected;
  ChipState({
    required this.chips,
    required this.chipsSelected,
  });
}

class ChipInitial extends ChipState {
  ChipInitial() : super(chips: [], chipsSelected: []);
}
