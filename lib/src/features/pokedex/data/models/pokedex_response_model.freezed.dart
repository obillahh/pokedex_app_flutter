// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokedexResponseModel _$PokedexResponseModelFromJson(Map<String, dynamic> json) {
  return _PokedexResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PokedexResponseModel {
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: "next")
  dynamic get next => throw _privateConstructorUsedError;
  @JsonKey(name: "previous")
  dynamic get previous => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<PokemonDataModel>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokedexResponseModelCopyWith<PokedexResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexResponseModelCopyWith<$Res> {
  factory $PokedexResponseModelCopyWith(
          PokedexResponseModel value, $Res Function(PokedexResponseModel) then) =
      _$PokedexResponseModelCopyWithImpl<$Res, PokedexResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "count") int? count,
      @JsonKey(name: "next") dynamic next,
      @JsonKey(name: "previous") dynamic previous,
      @JsonKey(name: "results") List<PokemonDataModel>? results});
}

/// @nodoc
class _$PokedexResponseModelCopyWithImpl<$Res, $Val extends PokedexResponseModel>
    implements $PokedexResponseModelCopyWith<$Res> {
  _$PokedexResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokedexResponseModelImplCopyWith<$Res>
    implements $PokedexResponseModelCopyWith<$Res> {
  factory _$$PokedexResponseModelImplCopyWith(
          _$PokedexResponseModelImpl value, $Res Function(_$PokedexResponseModelImpl) then) =
      __$$PokedexResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "count") int? count,
      @JsonKey(name: "next") dynamic next,
      @JsonKey(name: "previous") dynamic previous,
      @JsonKey(name: "results") List<PokemonDataModel>? results});
}

/// @nodoc
class __$$PokedexResponseModelImplCopyWithImpl<$Res>
    extends _$PokedexResponseModelCopyWithImpl<$Res, _$PokedexResponseModelImpl>
    implements _$$PokedexResponseModelImplCopyWith<$Res> {
  __$$PokedexResponseModelImplCopyWithImpl(
      _$PokedexResponseModelImpl _value, $Res Function(_$PokedexResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$PokedexResponseModelImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokedexResponseModelImpl implements _PokedexResponseModel {
  const _$PokedexResponseModelImpl(
      {@JsonKey(name: "count") this.count,
      @JsonKey(name: "next") this.next,
      @JsonKey(name: "previous") this.previous,
      @JsonKey(name: "results") final List<PokemonDataModel>? results})
      : _results = results;

  factory _$PokedexResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokedexResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "count")
  final int? count;
  @override
  @JsonKey(name: "next")
  final dynamic next;
  @override
  @JsonKey(name: "previous")
  final dynamic previous;
  final List<PokemonDataModel>? _results;
  @override
  @JsonKey(name: "results")
  List<PokemonDataModel>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PokedexResponseModel(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexResponseModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(previous), const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexResponseModelImplCopyWith<_$PokedexResponseModelImpl> get copyWith =>
      __$$PokedexResponseModelImplCopyWithImpl<_$PokedexResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokedexResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PokedexResponseModel implements PokedexResponseModel {
  const factory _PokedexResponseModel(
          {@JsonKey(name: "count") final int? count,
          @JsonKey(name: "next") final dynamic next,
          @JsonKey(name: "previous") final dynamic previous,
          @JsonKey(name: "results") final List<PokemonDataModel>? results}) =
      _$PokedexResponseModelImpl;

  factory _PokedexResponseModel.fromJson(Map<String, dynamic> json) =
      _$PokedexResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(name: "next")
  dynamic get next;
  @override
  @JsonKey(name: "previous")
  dynamic get previous;
  @override
  @JsonKey(name: "results")
  List<PokemonDataModel>? get results;
  @override
  @JsonKey(ignore: true)
  _$$PokedexResponseModelImplCopyWith<_$PokedexResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonDataModel _$PokemonDataModelFromJson(Map<String, dynamic> json) {
  return _PokemonDataModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonDataModel {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonDataModelCopyWith<PokemonDataModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDataModelCopyWith<$Res> {
  factory $PokemonDataModelCopyWith(PokemonDataModel value, $Res Function(PokemonDataModel) then) =
      _$PokemonDataModelCopyWithImpl<$Res, PokemonDataModel>;
  @useResult
  $Res call({@JsonKey(name: "name") String? name, @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$PokemonDataModelCopyWithImpl<$Res, $Val extends PokemonDataModel>
    implements $PokemonDataModelCopyWith<$Res> {
  _$PokemonDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDataModelImplCopyWith<$Res> implements $PokemonDataModelCopyWith<$Res> {
  factory _$$PokemonDataModelImplCopyWith(
          _$PokemonDataModelImpl value, $Res Function(_$PokemonDataModelImpl) then) =
      __$$PokemonDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") String? name, @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$PokemonDataModelImplCopyWithImpl<$Res>
    extends _$PokemonDataModelCopyWithImpl<$Res, _$PokemonDataModelImpl>
    implements _$$PokemonDataModelImplCopyWith<$Res> {
  __$$PokemonDataModelImplCopyWithImpl(
      _$PokemonDataModelImpl _value, $Res Function(_$PokemonDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$PokemonDataModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDataModelImpl implements _PokemonDataModel {
  const _$PokemonDataModelImpl({@JsonKey(name: "name") this.name, @JsonKey(name: "url") this.url});

  factory _$PokemonDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDataModelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'PokemonDataModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDataModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDataModelImplCopyWith<_$PokemonDataModelImpl> get copyWith =>
      __$$PokemonDataModelImplCopyWithImpl<_$PokemonDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDataModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonDataModel implements PokemonDataModel {
  const factory _PokemonDataModel(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "url") final String? url}) = _$PokemonDataModelImpl;

  factory _PokemonDataModel.fromJson(Map<String, dynamic> json) = _$PokemonDataModelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$PokemonDataModelImplCopyWith<_$PokemonDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
