// ignore_for_file: prefer_const_constructors

import 'package:bloc_favorite/bloc_chip/bloc/chip_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChipWordsScreen extends StatefulWidget {
  const ChipWordsScreen({Key? key}) : super(key: key);

  @override
  State<ChipWordsScreen> createState() => _ChipWordsScreenState();
}

class _ChipWordsScreenState extends State<ChipWordsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: BlocBuilder<ChipBloc, ChipState>(builder: (context, state) {
      return Wrap(
          runAlignment: WrapAlignment.end,
          crossAxisAlignment: WrapCrossAlignment.end,
          spacing: 10.0,
          // ignore: prefer_const_literals_to_create_immutables
          children: state.chips
              .map((chip) => ChoiceChip(
                  avatar: Icon(
                    chip.choosed
                        ? Icons.favorite
                        : Icons.favorite_border_outlined,
                    color: Colors.red,
                  ),
                  label: Text(
                    '${chip.chipNames}',
                    style: TextStyle(
                        color: chip.choosed ? Colors.white : Colors.black),
                  ),
                  selectedColor: Colors.indigo,
                  selected: chip.choosed,
                  onSelected: (selected) {
                    if (selected) {
                      context.read<ChipBloc>().add(ChipTappedEvent());
                      state.chipsSelected.add(chip);
                      setState(() {
                        chip.choosed = selected;
                      });
                    } else {
                      context.read<ChipBloc>().add(ChipUnTappedEvent());
                      state.chipsSelected.remove(chip);
                      setState(() {
                        chip.choosed = selected;
                      });
                    }
                  }))
              .toList());
    }));
  }
}
