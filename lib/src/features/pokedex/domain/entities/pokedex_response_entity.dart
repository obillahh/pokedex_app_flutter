// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pokedex_response_entity.freezed.dart';
part 'pokedex_response_entity.g.dart';

PokedexResponseEntity pokedexResponseEntityFromJson(String str) =>
    PokedexResponseEntity.fromJson(json.decode(str));

String pokedexResponseEntityToJson(PokedexResponseEntity data) => json.encode(data.toJson());

@freezed
class PokedexResponseEntity with _$PokedexResponseEntity {
  const factory PokedexResponseEntity({
    @JsonKey(name: "next") required dynamic next,
    @JsonKey(name: "previous") required dynamic previous,
    @JsonKey(name: "results") required List<PokemonDataEntity> results,
  }) = _PokedexResponseEntity;

  factory PokedexResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$PokedexResponseEntityFromJson(json);
}

@freezed
class PokemonDataEntity with _$PokemonDataEntity {
  const factory PokemonDataEntity({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "url") required String url,
  }) = _PokemonDataEntity;

  factory PokemonDataEntity.fromJson(Map<String, dynamic> json) =>
      _$PokemonDataEntityFromJson(json);
}

extension PokemonDataEntityX on PokemonDataEntity {
  int get id {
    return int.parse(url.split('/')[6]);
  }
}
