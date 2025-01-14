import 'package:flutter/material.dart';
import 'package:poke_app/core/config/extensions.dart';
import 'package:poke_app/core/shared/screen/base_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> items = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10];

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PokeDex',
            style: context.text.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            "Search for a pokemon by name or using it's \nNational Pokedex number",
            style: context.text.labelSmall?.copyWith(
              color: Colors.grey.shade500,
            ),
          ),
          _buildListPoke(),
        ],
      ),
    );
  }

  Widget _buildListPoke() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            itemCount: items.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              int item = items[index];
              return Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    item.toString(),
                    style: context.text.labelSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
