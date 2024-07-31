import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_application/src/core/constants/constants.dart';

class PokedexSearchBar extends StatelessWidget {
  const PokedexSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
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
