// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokedexResponseEntity _$PokedexResponseEntityFromJson(Map<String, dynamic> json) {
  return _PokedexResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$PokedexResponseEntity {
  @JsonKey(name: "next")
  dynamic get next => throw _privateConstructorUsedError;
  @JsonKey(name: "previous")
  dynamic get previous => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<PokemonDataEntity> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokedexResponseEntityCopyWith<PokedexResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexResponseEntityCopyWith<$Res> {
  factory $PokedexResponseEntityCopyWith(
          PokedexResponseEntity value, $Res Function(PokedexResponseEntity) then) =
      _$PokedexResponseEntityCopyWithImpl<$Res, PokedexResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "next") dynamic next,
      @JsonKey(name: "previous") dynamic previous,
      @JsonKey(name: "results") List<PokemonDataEntity> results});
}

/// @nodoc
class _$PokedexResponseEntityCopyWithImpl<$Res, $Val extends PokedexResponseEntity>
    implements $PokedexResponseEntityCopyWith<$Res> {
  _$PokedexResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonDataEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokedexResponseEntityImplCopyWith<$Res>
    implements $PokedexResponseEntityCopyWith<$Res> {
  factory _$$PokedexResponseEntityImplCopyWith(
          _$PokedexResponseEntityImpl value, $Res Function(_$PokedexResponseEntityImpl) then) =
      __$$PokedexResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "next") dynamic next,
      @JsonKey(name: "previous") dynamic previous,
      @JsonKey(name: "results") List<PokemonDataEntity> results});
}

/// @nodoc
class __$$PokedexResponseEntityImplCopyWithImpl<$Res>
    extends _$PokedexResponseEntityCopyWithImpl<$Res, _$PokedexResponseEntityImpl>
    implements _$$PokedexResponseEntityImplCopyWith<$Res> {
  __$$PokedexResponseEntityImplCopyWithImpl(
      _$PokedexResponseEntityImpl _value, $Res Function(_$PokedexResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$PokedexResponseEntityImpl(
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonDataEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokedexResponseEntityImpl implements _PokedexResponseEntity {
  const _$PokedexResponseEntityImpl(
      {@JsonKey(name: "next") required this.next,
      @JsonKey(name: "previous") required this.previous,
      @JsonKey(name: "results") required final List<PokemonDataEntity> results})
      : _results = results;

  factory _$PokedexResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokedexResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: "next")
  final dynamic next;
  @override
  @JsonKey(name: "previous")
  final dynamic previous;
  final List<PokemonDataEntity> _results;
  @override
  @JsonKey(name: "results")
  List<PokemonDataEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PokedexResponseEntity(next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexResponseEntityImpl &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous), const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexResponseEntityImplCopyWith<_$PokedexResponseEntityImpl> get copyWith =>
      __$$PokedexResponseEntityImplCopyWithImpl<_$PokedexResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokedexResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _PokedexResponseEntity implements PokedexResponseEntity {
  const factory _PokedexResponseEntity(
          {@JsonKey(name: "next") required final dynamic next,
          @JsonKey(name: "previous") required final dynamic previous,
          @JsonKey(name: "results") required final List<PokemonDataEntity> results}) =
      _$PokedexResponseEntityImpl;

  factory _PokedexResponseEntity.fromJson(Map<String, dynamic> json) =
      _$PokedexResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: "next")
  dynamic get next;
  @override
  @JsonKey(name: "previous")
  dynamic get previous;
  @override
  @JsonKey(name: "results")
  List<PokemonDataEntity> get results;
  @override
  @JsonKey(ignore: true)
  _$$PokedexResponseEntityImplCopyWith<_$PokedexResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonDataEntity _$PokemonDataEntityFromJson(Map<String, dynamic> json) {
  return _PokemonDataEntity.fromJson(json);
}

/// @nodoc
mixin _$PokemonDataEntity {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDataEntityCopyWith<PokemonDataEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDataEntityCopyWith<$Res> {
  factory $PokemonDataEntityCopyWith(
          PokemonDataEntity value, $Res Function(PokemonDataEntity) then) =
      _$PokemonDataEntityCopyWithImpl<$Res, PokemonDataEntity>;
  @useResult
  $Res call({@JsonKey(name: "name") String name, @JsonKey(name: "url") String url});
}

/// @nodoc
class _$PokemonDataEntityCopyWithImpl<$Res, $Val extends PokemonDataEntity>
    implements $PokemonDataEntityCopyWith<$Res> {
  _$PokemonDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDataEntityImplCopyWith<$Res> implements $PokemonDataEntityCopyWith<$Res> {
  factory _$$PokemonDataEntityImplCopyWith(
          _$PokemonDataEntityImpl value, $Res Function(_$PokemonDataEntityImpl) then) =
      __$$PokemonDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String name, @JsonKey(name: "url") String url});
}

/// @nodoc
class __$$PokemonDataEntityImplCopyWithImpl<$Res>
    extends _$PokemonDataEntityCopyWithImpl<$Res, _$PokemonDataEntityImpl>
    implements _$$PokemonDataEntityImplCopyWith<$Res> {
  __$$PokemonDataEntityImplCopyWithImpl(
      _$PokemonDataEntityImpl _value, $Res Function(_$PokemonDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$PokemonDataEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDataEntityImpl implements _PokemonDataEntity {
  const _$PokemonDataEntityImpl(
      {@JsonKey(name: "name") required this.name, @JsonKey(name: "url") required this.url});

  factory _$PokemonDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDataEntityImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "url")
  final String url;

  @override
  String toString() {
    return 'PokemonDataEntity(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDataEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDataEntityImplCopyWith<_$PokemonDataEntityImpl> get copyWith =>
      __$$PokemonDataEntityImplCopyWithImpl<_$PokemonDataEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDataEntityImplToJson(
      this,
    );
  }
}

abstract class _PokemonDataEntity implements PokemonDataEntity {
  const factory _PokemonDataEntity(
      {@JsonKey(name: "name") required final String name,
      @JsonKey(name: "url") required final String url}) = _$PokemonDataEntityImpl;

  factory _PokemonDataEntity.fromJson(Map<String, dynamic> json) = _$PokemonDataEntityImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDataEntityImplCopyWith<_$PokemonDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
