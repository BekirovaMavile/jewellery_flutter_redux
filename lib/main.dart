import 'package:flutter/material.dart';
import 'package:jewellry_shop/states/jew_state.dart';
import 'package:jewellry_shop/states/shared_redux/shared_reducer.dart';
import 'package:jewellry_shop/states/shared_redux/shared_state.dart';
import 'package:jewellry_shop/ui/_ui.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jewellry_shop/ui/screens/home_screen.dart';
import 'package:jewellry_shop/ui_kit/app_theme.dart';

void main() {
  final store = Store<SharedState>(
      sharedReducer,
      initialState: SharedState.initial()
  );
  runApp(MyApp(store: store,));
}

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.store});
  final Store<SharedState> store;
  @override
  Widget build(BuildContext context) {
    return StoreProvider<SharedState>(
      store: store,
      child: MaterialApp(
        title: 'Sunny Stickers',
        theme: AppTheme.darkTheme,
        home: const HomeScreen(),
      ),
    );
  }
}