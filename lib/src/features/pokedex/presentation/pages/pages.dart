import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_application/src/core/constants/colors.dart';
import 'package:pokedex_application/src/core/constants/constants.dart';

class PokedexPage extends StatelessWidget {
  const PokedexPage({super.key});

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColor.primary,
      leading: SvgPicture.asset(
        AppIcons.pokeball,
        semanticsLabel: 'Pokeball Logo',
      ),
      title: const Text('Pokédex'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
    );
  }
}
