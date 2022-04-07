import 'package:bloc_favorite/bloc_chip/bloc/chip_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChipFavoriteScreen extends StatefulWidget {
  const ChipFavoriteScreen({Key? key}) : super(key: key);

  @override
  State<ChipFavoriteScreen> createState() => _ChipFavoriteScreenState();
}

class _ChipFavoriteScreenState extends State<ChipFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: BlocBuilder<ChipBloc, ChipState>(builder: (context, state) {
      return Wrap(
          runAlignment: WrapAlignment.end,
          crossAxisAlignment: WrapCrossAlignment.end,
          spacing: 10.0,
          // ignore: prefer_const_literals_to_create_immutables
          children: state.chipsSelected
              .map((chip) => ChoiceChip(
                  label: Text(
                    '${chip.chipNames}',
                    style: TextStyle(color: Colors.white),
                  ),
                  selectedColor: Colors.indigo,
                  selected: chip.choosed,
                  onSelected: (selected) {
                    setState(() {
                      chip.choosed = selected;
                    });
                  }))
              .toList());
    }));
  }
}
