import 'package:bloc/bloc.dart';
import 'package:bloc_favorite/presentations/chips_lists.dart';

part 'chip_event.dart';
part 'chip_state.dart';

class ChipBloc extends Bloc<ChipEvent, ChipState> {
  ChipBloc() : super(ChipInitial()..chips = chipsList) {
    on<ChipTappedEvent>((event, emit) {
      emit(ChipState(chips: chipsList, chipsSelected: chipsSelectedList));
    });
    on<ChipUnTappedEvent>((event, emit) {
      emit(ChipState(chips: chipsList, chipsSelected: chipsSelectedList));
    });
  }
}
