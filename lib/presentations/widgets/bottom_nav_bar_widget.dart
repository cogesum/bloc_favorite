import 'package:bloc_favorite/bloc_navbar/favorite_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarWidget extends StatefulWidget {
  final selectedIndex;
  const BottomNavBarWidget({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.wordpress_sharp),
            label: 'Words',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        currentIndex: widget.selectedIndex,
        selectedItemColor: Colors.red,
        onTap: (index) {
          if (index == 1) {
            context.read<FavoriteBloc>().add(OnPressedFavoriteEvent());
          } else if (index == 0) {
            context.read<FavoriteBloc>().add(OnPressedWordEvent());
          }
        });
  }
}
