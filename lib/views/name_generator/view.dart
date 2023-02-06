import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/views/name_generator/view_state.dart';
import 'package:namer_app/views/name_generator/widgets/big_card.dart';
import 'package:provider/provider.dart';

class NameGeneratorView extends StatelessWidget {
  const NameGeneratorView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeState state = context.watch<HomeState>();
    WordPair pair = state.currentWord;
    IconData icon;
    if (state.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    state.toggleFavorite();
                  },
                  icon: Icon(icon),
                  label: const Text("Like")),
              const SizedBox(width: 10),
              ElevatedButton(
                  onPressed: () {
                    state.getNext();
                  },
                  child: const Text("Next")),
            ],
          )
        ],
      ),
    );
  }
}
