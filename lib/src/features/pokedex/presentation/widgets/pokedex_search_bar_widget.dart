import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_application/src/core/constants/constants.dart';
import 'package:pokedex_application/src/features/pokedex/presentation/bloc/pokedex_bloc.dart';

class PokedexSearchBar extends StatelessWidget {
  const PokedexSearchBar({
    super.key,
    required this.selectedSortOption,
  });

  final String selectedSortOption;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        if (value.isEmpty) {
          context.read<PokedexBloc>().add(PokedexEvent.fetchPokedex(selectedSortOption));
        }
        final int? id = int.tryParse(value);
        if (id != null) {
          context.read<PokedexBloc>().add(PokedexEvent.fetchPokemonSearchByNumber(id));
        } else {
          context.read<PokedexBloc>().add(PokedexEvent.fetchPokemonSearchByName(value));
        }
      },
      style: AppTextStyle.body3.copyWith(
        color: AppColor.dark,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(24.0).r,
        ),
        hintText: 'Search',
        hintStyle: AppTextStyle.body3.copyWith(
          color: AppColor.medium,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: AppColor.primary,
          size: 20.0.sp,
        ),
        filled: true,
        fillColor: AppColor.white,
        isDense: true,
      ),
    );
  }
}
