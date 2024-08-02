import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';
import 'package:pokedex_application/src/features/pokedex/domain/usecases/get_pokedex_next_page_usecase.dart';
import 'package:pokedex_application/src/features/pokedex/domain/usecases/get_pokedex_usecase.dart';
import 'package:pokedex_application/src/features/pokedex/domain/usecases/get_pokemon_search_by_name.dart';
import 'package:pokedex_application/src/features/pokedex/domain/usecases/get_pokemon_search_by_number.dart';

part 'pokedex_event.dart';
part 'pokedex_state.dart';
part 'pokedex_bloc.freezed.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  PokedexBloc({
    required this.getPokedexUseCase,
    required this.getPokedexNextPageUseCase,
    required this.getPokemonSearchByNameUseCase,
    required this.getPokemonSearchByNumberUseCase,
  }) : super(const _Initial()) {
    on<_GetPokedexEvent>(_onGetPokedexEvent);
    on<_GetPokedexNextPageEvent>(_onGetPokedexNextPageEvent);
    on<_GetPokemonSearchByNameEvent>(_onGetPokemonSearchByName);
    on<_GetPokemonSearchByNumberEvent>(_onGetPokemonSearchByNumber);
  }

  final GetPokedexUseCase getPokedexUseCase;
  final GetPokedexNextPageUseCase getPokedexNextPageUseCase;
  final GetPokemonSearchByNameUseCase getPokemonSearchByNameUseCase;
  final GetPokemonSearchByNumberUseCase getPokemonSearchByNumberUseCase;

  Future<void> _onGetPokedexEvent(_GetPokedexEvent event, Emitter<PokedexState> emit) async {
    emit(const PokedexState.loading());
    try {
      final pokedex = await getPokedexUseCase.execute(event.sortBy);
      emit(PokedexState.success(pokedex: pokedex));
    } catch (e) {
      emit(PokedexState.failure(message: e.toString()));
    }
  }

  Future<void> _onGetPokedexNextPageEvent(
      _GetPokedexNextPageEvent event, Emitter<PokedexState> emit) async {
    emit(const PokedexState.loading());
    try {
      final pokedex = await getPokedexNextPageUseCase.execute(event.next);
      emit(PokedexState.success(pokedex: pokedex));
    } catch (e) {
      emit(PokedexState.failure(message: e.toString()));
    }
  }

  Future<void> _onGetPokemonSearchByName(
      _GetPokemonSearchByNameEvent event, Emitter<PokedexState> emit) async {
    emit(const PokedexState.loading());
    try {
      final pokedex = await getPokemonSearchByNameUseCase.execute(event.name);
      emit(PokedexState.success(pokedex: pokedex));
    } catch (e) {
      emit(PokedexState.failure(message: e.toString()));
    }
  }

  Future<void> _onGetPokemonSearchByNumber(
      _GetPokemonSearchByNumberEvent event, Emitter<PokedexState> emit) async {
    emit(const PokedexState.loading());
    try {
      final pokedex = await getPokemonSearchByNumberUseCase.execute(event.id);
      emit(PokedexState.success(pokedex: pokedex));
    } catch (e) {
      emit(PokedexState.failure(message: e.toString()));
    }
  }
}
