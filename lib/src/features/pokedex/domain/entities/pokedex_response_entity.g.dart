// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokedexResponseEntityImpl _$$PokedexResponseEntityImplFromJson(Map<String, dynamic> json) =>
    _$PokedexResponseEntityImpl(
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonDataEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokedexResponseEntityImplToJson(_$PokedexResponseEntityImpl instance) =>
    <String, dynamic>{
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$PokemonDataEntityImpl _$$PokemonDataEntityImplFromJson(Map<String, dynamic> json) =>
    _$PokemonDataEntityImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$PokemonDataEntityImplToJson(_$PokemonDataEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
