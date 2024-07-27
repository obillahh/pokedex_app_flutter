// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'pokedex_response_model.freezed.dart';
part 'pokedex_response_model.g.dart';

PokedexResponseModel pokedexResponseModelFromJson(String str) =>
    PokedexResponseModel.fromJson(json.decode(str));

String pokedexResponseModelToJson(PokedexResponseModel data) => json.encode(data.toJson());

@freezed
class PokedexResponseModel with _$PokedexResponseModel {
  const factory PokedexResponseModel({
    @JsonKey(name: "count") int? count,
    @JsonKey(name: "next") dynamic next,
    @JsonKey(name: "previous") dynamic previous,
    @JsonKey(name: "results") List<PokemonDataModel>? results,
  }) = _PokedexResponseModel;

  factory PokedexResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PokedexResponseModelFromJson(json);
}

@freezed
class PokemonDataModel with _$PokemonDataModel {
  const factory PokemonDataModel({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "url") String? url,
  }) = _PokemonDataModel;

  factory PokemonDataModel.fromJson(Map<String, dynamic> json) => _$PokemonDataModelFromJson(json);
}
