import 'package:bloc_favorite/bloc_navbar/favorite_bloc.dart';
import 'package:bloc_favorite/presentations/screems/chip_favorite_screen.dart';
import 'package:bloc_favorite/presentations/widgets/bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'chip_words_screen.dart';

class FavoriteChooseScreen extends StatefulWidget {
  const FavoriteChooseScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteChooseScreen> createState() => _FavoriteChooseScreenState();
}

class _FavoriteChooseScreenState extends State<FavoriteChooseScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    ChipWordsScreen(),
    ChipFavoriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteBloc, FavoriteState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigoAccent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Favorite Words '),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          body: Container(
            child: _widgetOptions.elementAt(state.index),
          ),
          bottomNavigationBar: BottomNavBarWidget(
            selectedIndex: state.index,
          ),
        );
      },
    );
  }
}
