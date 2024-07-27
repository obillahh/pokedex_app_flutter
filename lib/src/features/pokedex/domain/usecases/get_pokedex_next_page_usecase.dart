import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';
import 'package:pokedex_application/src/features/pokedex/domain/repositories/repositories.dart';

class GetPokedexNextPageUseCase {
  GetPokedexNextPageUseCase({required this.repository});

  final PokedexRepository repository;

  Future<PokedexResponseEntity?> execute(String next) async {
    return repository.getPokedexNextPage(next);
  }
}
