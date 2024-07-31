import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex_application/src/core/api/api_endpoints.dart';
import 'package:pokedex_application/src/core/constants/colors.dart';
import 'package:pokedex_application/src/core/constants/constants.dart';
import 'package:pokedex_application/src/core/constants/text_style.dart';
import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';
import 'package:pokedex_application/src/features/pokedex/presentation/bloc/pokedex_bloc.dart';
import 'package:pokedex_application/src/features/pokedex/presentation/widgets/pokedex_search_bar_widget.dart';
import 'package:pokedex_application/src/features/pokedex/presentation/widgets/pokemon_card_widget.dart';

class PokedexPage extends StatefulWidget {
  const PokedexPage({super.key});

  @override
  State<PokedexPage> createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
  final PagingController<String, PokemonDataEntity> _pagingController =
      PagingController(firstPageKey: ApiEndpoints.pokemonListEndpoint);

  String _selectedSortOption = 'Number';

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      context.read<PokedexBloc>().add(PokedexEvent.fetchPokedexNextPage(pageKey));
    });
    context.read<PokedexBloc>().add(PokedexEvent.fetchPokedex(_selectedSortOption));
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: AppColor.primary,
      leadingWidth: 38.h,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.0.w),
        child: SvgPicture.asset(
          AppIcons.pokeball,
          semanticsLabel: 'Pokeball Logo',
        ),
      ),
      title: Text(
        'Pokédex',
        style: AppTextStyle.headline.copyWith(
          color: AppColor.white,
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(64.h),
        child: Padding(
          padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, bottom: 24.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: PokedexSearchBar(),
              ),
              SizedBox(width: 16.0.h),
              _buildSortCard(),
            ],
          ),
        ),
      ),
    );
  }

  IconButton _buildSortCard() {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0).r,
              ),
              backgroundColor: AppColor.primary,
              title: Text(
                'Sort By:',
                style: AppTextStyle.subtitle2.copyWith(color: AppColor.white),
              ),
              contentPadding: EdgeInsets.all(4.0.h),
              content: Container(
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(8.0).r,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RadioListTile<String>(
                      fillColor: WidgetStateProperty.all(AppColor.primary),
                      overlayColor: WidgetStateProperty.all(AppColor.primary),
                      title: Text(
                        'Number',
                        style: AppTextStyle.body3.copyWith(color: AppColor.dark),
                      ),
                      value: 'Number',
                      groupValue: _selectedSortOption,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedSortOption = value;
                          });
                          context.read<PokedexBloc>().add(PokedexEvent.fetchPokedex(value));
                          Navigator.of(context).pop();
                        }
                      },
                    ),
                    RadioListTile<String>(
                      fillColor: WidgetStateProperty.all(AppColor.primary),
                      overlayColor: WidgetStateProperty.all(AppColor.primary),
                      title: Text(
                        'Name',
                        style: AppTextStyle.body3.copyWith(color: AppColor.dark),
                      ),
                      value: 'Name',
                      groupValue: _selectedSortOption,
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _selectedSortOption = value;
                          });
                          context.read<PokedexBloc>().add(PokedexEvent.fetchPokedex(value));
                          Navigator.of(context).pop();
                        }
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      style: IconButton.styleFrom(
        backgroundColor: AppColor.white,
        minimumSize: Size(42.0.w, 42.0.w),
      ),
      icon: Icon(
        Icons.tag,
        color: AppColor.primary,
        size: 18.0.sp,
      ),
    );
  }

  Container _buildBody(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.0.h, vertical: 4.0.h),
      decoration: BoxDecoration(
        color: AppColor.primary,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.all(const Radius.circular(8.0).r),
        ),
        child: BlocConsumer<PokedexBloc, PokedexState>(
          listener: (context, state) {
            state.when(
              initial: () {},
              loading: () {},
              success: (pokedex) {
                final isLastPage = pokedex!.next == null;
                if (isLastPage) {
                  _pagingController.appendLastPage(pokedex.results);
                } else {
                  _pagingController.appendPage(pokedex.results, pokedex.next!);
                }
              },
              failure: (message) {
                _pagingController.error = message;
              },
            );
          },
          builder: (context, state) {
            return state.when(
              initial: () => Container(),
              loading: () => Center(
                child: CircularProgressIndicator(
                  color: AppColor.primary,
                ),
              ),
              success: (pokedex) => PagedGridView<String, PokemonDataEntity>(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 24.0.w),
                pagingController: _pagingController,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8.0.h,
                  crossAxisSpacing: 8.0.h,
                  childAspectRatio: ScreenUtil().pixelRatio! * 0.34,
                ),
                builderDelegate: PagedChildBuilderDelegate<PokemonDataEntity>(
                  itemBuilder: (context, item, index) => PokemonCard(pokemon: item),
                  newPageProgressIndicatorBuilder: (context) => Center(
                    child: CircularProgressIndicator(
                      color: AppColor.primary,
                    ),
                  ),
                ),
              ),
              failure: (message) => Center(
                child: Text(
                  message,
                  style: AppTextStyle.body3.copyWith(
                    color: AppColor.primary,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }
}
