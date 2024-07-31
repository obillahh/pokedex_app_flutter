import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';

abstract class PokedexRepository {
  Future<PokedexResponseEntity?> getPokedex(String sortBy);
  Future<PokedexResponseEntity?> getPokedexNextPage(String next);
  // Future<PokedexResponseEntity?> getPokedexSortBy(String sortBy);
}
