part of 'pokedex_bloc.dart';

@freezed
class PokedexState with _$PokedexState {
  const factory PokedexState.initial() = _Initial;

  const factory PokedexState.loading() = _PokedexLoadingState;

  const factory PokedexState.success({required PokedexResponseEntity? pokedex}) =
      _PokedexSuccessState;

  const factory PokedexState.failure({required String message}) = _PokedexFailureState;
}
