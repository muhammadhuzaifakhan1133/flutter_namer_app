import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:namer_app/views/name_generator/view_state.dart';
import 'package:provider/provider.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeState state = context.watch<HomeState>();
    if (state.favorites.isEmpty) {
      return const Center(
        child: Text("No favorites yet"),
      );
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text("You have ${state.favorites.length} favorites"),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: state.favorites.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.favorite),
                title: Text(state.favorites.elementAt(index).asPascalCase),
              );
            },
          ),
        ),
      ],
    );
  }
}
