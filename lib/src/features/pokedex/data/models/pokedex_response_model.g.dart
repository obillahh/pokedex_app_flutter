// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokedexResponseModelImpl _$$PokedexResponseModelImplFromJson(Map<String, dynamic> json) =>
    _$PokedexResponseModelImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'],
      previous: json['previous'],
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PokemonDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokedexResponseModelImplToJson(_$PokedexResponseModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$PokemonDataModelImpl _$$PokemonDataModelImplFromJson(Map<String, dynamic> json) =>
    _$PokemonDataModelImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PokemonDataModelImplToJson(_$PokemonDataModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
