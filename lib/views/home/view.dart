import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/views/home/view_state.dart';
import 'package:namer_app/views/home/widgets/big_card.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeState state = context.watch<HomeState>();
    WordPair pair = state.currentWord;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigCard(pair: pair),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  state.getNext();
                },
                child: const Text("Next"))
          ],
        ),
      ),
    );
  }
}
