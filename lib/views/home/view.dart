import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/views/home/view_state.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeState state = context.watch<HomeState>();
    WordPair pair = state.currentWord;
    return Scaffold(
      body: Column(
        children: [
          const Text("A random idea"),
          Text(pair.asLowerCase),
          ElevatedButton(
              onPressed: () {
                state.getNext();
              },
              child: const Text("Next"))
        ],
      ),
    );
  }
}
