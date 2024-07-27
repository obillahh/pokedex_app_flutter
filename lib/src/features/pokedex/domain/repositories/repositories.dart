import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';

abstract class PokedexRepository {
  Future<PokedexResponseEntity?> getPokedex();
  Future<PokedexResponseEntity?> getPokedexNextPage(String next);
}
