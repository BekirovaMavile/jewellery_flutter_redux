import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:jewellry_shop/states/jew_state.dart';
import 'package:jewellry_shop/states/shared_data.dart';
import 'package:provider/provider.dart';
import 'package:jewellry_shop/ui/_ui.dart';
import 'package:jewellry_shop/ui/screens/home_screen.dart';
import 'package:jewellry_shop/ui_kit/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  SharedData get _state => JewState().state;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) => MaterialApp(
      title: 'Sunny Stickers',
      theme: _state.isLight ? AppTheme.lightTheme : AppTheme.darkTheme,
      home: const HomeScreen(),
    ),
    );
  }
}