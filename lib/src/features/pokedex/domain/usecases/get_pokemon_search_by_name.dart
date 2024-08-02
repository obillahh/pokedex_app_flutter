import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';
import 'package:pokedex_application/src/features/pokedex/domain/repositories/repositories.dart';

class GetPokemonSearchByNameUseCase {
  final PokedexRepository repository;

  GetPokemonSearchByNameUseCase({required this.repository});

  Future<PokedexResponseEntity?> execute(String name) async {
    return repository.getPokemonSearchByName(name);
  }
}
