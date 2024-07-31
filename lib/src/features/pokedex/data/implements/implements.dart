import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';

import '../sources/sources.dart';
import '../../domain/repositories/repositories.dart';

class PokedexRepositoryImp implements PokedexRepository {
  PokedexRepositoryImp({required this.remoteDataSource});

  final PokedexRemoteDataSource remoteDataSource;

  @override
  Future<PokedexResponseEntity?> getPokedex(String sortBy) async {
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

      final mutableResults = List<PokemonDataEntity>.from(pokedex.results);
      switch (sortBy) {
        case 'Number':
          mutableResults.sort((a, b) => a.id.compareTo(b.id));
          break;
        case 'Name':
          mutableResults.sort((a, b) => a.name.compareTo(b.name));
          break;
        default:
          mutableResults.sort((a, b) => a.id.compareTo(b.id));
          break;
      }

      return pokedex.copyWith(results: mutableResults);
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

  // @override
  // Future<PokedexResponseEntity?> getPokedexSortBy(String sortBy) async {
  //   try {
  //     final response = await remoteDataSource.fetchPokedex();
  //     final pokedex = PokedexResponseEntity(
  //       next: response.next,
  //       previous: response.previous,
  //       results: response.results
  //               ?.map((e) => PokemonDataEntity(name: e.name ?? "", url: e.url ?? ""))
  //               .toList() ??
  //           [],
  //     );
  //     switch (sortBy) {
  //       case 'Number':
  //         pokedex.results.sort((a, b) => a.id.compareTo(b.id));
  //         break;
  //       case 'Name':
  //         pokedex.results.sort((a, b) => a.name.compareTo(b.name));
  //         break;
  //       default:
  //         pokedex.results.sort((a, b) => a.id.compareTo(b.id));
  //         break;
  //     }
  //     return pokedex;
  //   } catch (e) {
  //     throw Exception('Failed to fetch pokedex: ${e.toString()}');
  //   }
  // }
}
