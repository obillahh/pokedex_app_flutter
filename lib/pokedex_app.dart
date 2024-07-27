import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_application/src/core/api/api_client.dart';
import 'package:pokedex_application/src/features/pokedex/data/implements/implements.dart';
import 'package:pokedex_application/src/features/pokedex/data/sources/sources.dart';
import 'package:pokedex_application/src/features/pokedex/domain/usecases/get_pokedex_next_page_usecase.dart';
import 'package:pokedex_application/src/features/pokedex/domain/usecases/get_pokedex_usecase.dart';
import 'package:pokedex_application/src/features/pokedex/presentation/bloc/pokedex_bloc.dart';

import 'src/core/config/config.dart';
import 'package:flutter/material.dart';
import 'src/core/routes/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PokedexBloc(
        getPokedexUseCase: GetPokedexUseCase(
          repository: PokedexRepositoryImp(
            remoteDataSource: PokedexRemoteDataSource(
              apiClient: ApiClient(),
            ),
          ),
        ),
        getPokedexNextPageUseCase: GetPokedexNextPageUseCase(
          repository: PokedexRepositoryImp(
            remoteDataSource: PokedexRemoteDataSource(
              apiClient: ApiClient(),
            ),
          ),
        ),
      ),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, ch) => DismissKeyboard(
          child: MaterialApp.router(
            routerConfig: appRouter,
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}
