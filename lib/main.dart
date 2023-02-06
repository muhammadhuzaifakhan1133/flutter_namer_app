import 'package:flutter/material.dart';
import 'package:namer_app/views/home/view.dart';
import 'package:namer_app/views/name_generator/view.dart';
import 'package:namer_app/views/name_generator/view_state.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeState(),
      child: MaterialApp(
          title: "Namer App",
          theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
          home: const HomeView()),
    );
  }
}
