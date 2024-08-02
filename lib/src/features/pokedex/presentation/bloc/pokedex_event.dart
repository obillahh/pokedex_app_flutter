part of 'pokedex_bloc.dart';

@freezed
class PokedexEvent with _$PokedexEvent {
  const factory PokedexEvent.fetchPokedex(String sortBy) = _GetPokedexEvent;
  const factory PokedexEvent.fetchPokedexNextPage(String next) = _GetPokedexNextPageEvent;
  const factory PokedexEvent.fetchPokemonSearchByName(String name) = _GetPokemonSearchByNameEvent;
  const factory PokedexEvent.fetchPokemonSearchByNumber(int id) = _GetPokemonSearchByNumberEvent;
}
