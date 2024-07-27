import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';

import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class PokedexRepositoryImp implements PokedexRepository {
  PokedexRepositoryImp({required this.remoteDataSource});

  final PokedexRemoteDataSource remoteDataSource;

  @override
  Future<PokedexResponseEntity?> getPokedex() async {
    try {
      final response = await remoteDataSource.fetchPokedex();
      final pokedex = PokedexResponseEntity(
        next: response.next,
        previous: response.previous,
        results: response.results
                ?.map((e) => PokemonDataEntity(name: e.name ?? "", url: e.url ?? ""))
                .toList() ??
            [],
      );
      return pokedex;
    } catch (e) {
      throw Exception('Failed to fetch pokedex: ${e.toString()}');
    }
  }

  @override
  Future<PokedexResponseEntity?> getPokedexNextPage(String next) async {
    try {
      final response = await remoteDataSource.fetchPokedexNextPage(next);
      final pokedex = PokedexResponseEntity(
        next: response.next,
        previous: response.previous,
        results: response.results
                ?.map((e) => PokemonDataEntity(name: e.name ?? "", url: e.url ?? ""))
                .toList() ??
            [],
      );
      return pokedex;
    } catch (e) {
      throw Exception('Failed to fetch pokedex: ${e.toString()}');
    }
  }
}
