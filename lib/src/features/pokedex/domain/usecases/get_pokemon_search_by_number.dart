import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';
import 'package:pokedex_application/src/features/pokedex/domain/repositories/repositories.dart';

class GetPokemonSearchByNumberUseCase {
  final PokedexRepository repository;
  GetPokemonSearchByNumberUseCase({required this.repository});

  Future<PokedexResponseEntity?> execute(int id) async {
    return repository.getPokemonSearchByNum(id);
  }
}
