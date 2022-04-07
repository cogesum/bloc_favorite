import 'package:bloc_favorite/bloc_chip/bloc/chip_bloc.dart';
import 'package:bloc_favorite/bloc_navbar/favorite_bloc.dart';
import 'package:bloc_favorite/presentations/screems/favorite_choose_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteBloc(),
      child: BlocProvider(
        create: (context) => ChipBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: FavoriteChooseScreen(),
        ),
      ),
    );
  }
}
