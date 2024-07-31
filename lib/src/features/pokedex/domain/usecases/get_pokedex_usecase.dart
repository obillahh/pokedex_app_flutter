import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';

import '../repositories/repositories.dart';

class GetPokedexUseCase {
  GetPokedexUseCase({required this.repository});

  final PokedexRepository repository;

  Future<PokedexResponseEntity?> execute(String sortBy) async {
    return repository.getPokedex(sortBy);
  }
}
