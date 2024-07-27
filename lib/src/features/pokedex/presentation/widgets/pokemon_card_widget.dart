import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_application/src/core/constants/colors.dart';
import 'package:pokedex_application/src/core/constants/constants.dart';
import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.pokemon,
  });

  final PokemonDataEntity pokemon;

  String capitalizeFirstLetter(String input) {
    return input[0].toUpperCase() + input.substring(1).toLowerCase();
  }

  @override
  Widget build(BuildContext context) {
    int pokemonId = extractIdFromUrl(pokemon.url);
    String imageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$pokemonId.png';

    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColor.dark.withOpacity(0.2),
                  spreadRadius: 1.r,
                  blurRadius: 3.r,
                  offset: const Offset(0, 1),
                ),
              ],
              color: AppColor.white,
              borderRadius: BorderRadius.all(const Radius.circular(12.0).r),
            ),
          ),
          Positioned(
            bottom: 0.h,
            left: 0.h,
            right: 0.h,
            child: Container(
              height: 44.w,
              decoration: BoxDecoration(
                color: AppColor.background,
                borderRadius: BorderRadius.all(const Radius.circular(11.0).r),
              ),
            ),
          ),
          Positioned(
            top: 4.h,
            right: 8.h,
            child: Text(
              '#${pokemonId.toString().padLeft(3, '0')}',
              style: AppTextStyle.caption.copyWith(
                color: AppColor.medium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.h),
              child: Text(
                capitalizeFirstLetter(pokemon.name),
                style: AppTextStyle.body3.copyWith(
                  color: AppColor.dark,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              width: 72.0.w,
              height: 72.0.w,
            ),
          ),
        ],
      ),
    );
  }
}

int extractIdFromUrl(String url) {
  final uri = Uri.parse(url);
  final segments = uri.pathSegments;
  return int.parse(segments[segments.length - 2]);
}
