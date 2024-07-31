import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_application/src/features/pokedex/domain/entities/pokedex_response_entity.dart';
import 'package:pokedex_application/src/features/pokedex/domain/usecases/get_pokedex_next_page_usecase.dart';
import 'package:pokedex_application/src/features/pokedex/domain/usecases/get_pokedex_usecase.dart';

part 'pokedex_event.dart';
part 'pokedex_state.dart';
part 'pokedex_bloc.freezed.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  PokedexBloc({
    required this.getPokedexUseCase,
    required this.getPokedexNextPageUseCase,
  }) : super(const _Initial()) {
    on<_GetPokedexEvent>(_onGetPokedexEvent);
    on<_GetPokedexNextPageEvent>(_onGetPokedexNextPageEvent);
  }

  final GetPokedexUseCase getPokedexUseCase;
  final GetPokedexNextPageUseCase getPokedexNextPageUseCase;

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
    try {
      final pokedex = await getPokedexNextPageUseCase.execute(event.next);
      emit(PokedexState.success(pokedex: pokedex));
    } catch (e) {
      emit(PokedexState.failure(message: e.toString()));
    }
  }
}
