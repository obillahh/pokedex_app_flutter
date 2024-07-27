part of 'pokedex_bloc.dart';

@freezed
class PokedexEvent with _$PokedexEvent {
  const factory PokedexEvent.fetchPokedex() = _GetPokedexEvent;
  const factory PokedexEvent.fetchPokedexNextPage(String next) = _GetPokedexNextPageEvent;
}
