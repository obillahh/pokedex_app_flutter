// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokedex_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokedexEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPokedex,
    required TResult Function(String next) fetchPokedexNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPokedex,
    TResult? Function(String next)? fetchPokedexNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPokedex,
    TResult Function(String next)? fetchPokedexNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPokedexEvent value) fetchPokedex,
    required TResult Function(_GetPokedexNextPageEvent value)
        fetchPokedexNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPokedexEvent value)? fetchPokedex,
    TResult? Function(_GetPokedexNextPageEvent value)? fetchPokedexNextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPokedexEvent value)? fetchPokedex,
    TResult Function(_GetPokedexNextPageEvent value)? fetchPokedexNextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexEventCopyWith<$Res> {
  factory $PokedexEventCopyWith(
          PokedexEvent value, $Res Function(PokedexEvent) then) =
      _$PokedexEventCopyWithImpl<$Res, PokedexEvent>;
}

/// @nodoc
class _$PokedexEventCopyWithImpl<$Res, $Val extends PokedexEvent>
    implements $PokedexEventCopyWith<$Res> {
  _$PokedexEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPokedexEventImplCopyWith<$Res> {
  factory _$$GetPokedexEventImplCopyWith(_$GetPokedexEventImpl value,
          $Res Function(_$GetPokedexEventImpl) then) =
      __$$GetPokedexEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPokedexEventImplCopyWithImpl<$Res>
    extends _$PokedexEventCopyWithImpl<$Res, _$GetPokedexEventImpl>
    implements _$$GetPokedexEventImplCopyWith<$Res> {
  __$$GetPokedexEventImplCopyWithImpl(
      _$GetPokedexEventImpl _value, $Res Function(_$GetPokedexEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPokedexEventImpl implements _GetPokedexEvent {
  const _$GetPokedexEventImpl();

  @override
  String toString() {
    return 'PokedexEvent.fetchPokedex()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPokedexEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPokedex,
    required TResult Function(String next) fetchPokedexNextPage,
  }) {
    return fetchPokedex();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPokedex,
    TResult? Function(String next)? fetchPokedexNextPage,
  }) {
    return fetchPokedex?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPokedex,
    TResult Function(String next)? fetchPokedexNextPage,
    required TResult orElse(),
  }) {
    if (fetchPokedex != null) {
      return fetchPokedex();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPokedexEvent value) fetchPokedex,
    required TResult Function(_GetPokedexNextPageEvent value)
        fetchPokedexNextPage,
  }) {
    return fetchPokedex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPokedexEvent value)? fetchPokedex,
    TResult? Function(_GetPokedexNextPageEvent value)? fetchPokedexNextPage,
  }) {
    return fetchPokedex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPokedexEvent value)? fetchPokedex,
    TResult Function(_GetPokedexNextPageEvent value)? fetchPokedexNextPage,
    required TResult orElse(),
  }) {
    if (fetchPokedex != null) {
      return fetchPokedex(this);
    }
    return orElse();
  }
}

abstract class _GetPokedexEvent implements PokedexEvent {
  const factory _GetPokedexEvent() = _$GetPokedexEventImpl;
}

/// @nodoc
abstract class _$$GetPokedexNextPageEventImplCopyWith<$Res> {
  factory _$$GetPokedexNextPageEventImplCopyWith(
          _$GetPokedexNextPageEventImpl value,
          $Res Function(_$GetPokedexNextPageEventImpl) then) =
      __$$GetPokedexNextPageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String next});
}

/// @nodoc
class __$$GetPokedexNextPageEventImplCopyWithImpl<$Res>
    extends _$PokedexEventCopyWithImpl<$Res, _$GetPokedexNextPageEventImpl>
    implements _$$GetPokedexNextPageEventImplCopyWith<$Res> {
  __$$GetPokedexNextPageEventImplCopyWithImpl(
      _$GetPokedexNextPageEventImpl _value,
      $Res Function(_$GetPokedexNextPageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = null,
  }) {
    return _then(_$GetPokedexNextPageEventImpl(
      null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPokedexNextPageEventImpl implements _GetPokedexNextPageEvent {
  const _$GetPokedexNextPageEventImpl(this.next);

  @override
  final String next;

  @override
  String toString() {
    return 'PokedexEvent.fetchPokedexNextPage(next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPokedexNextPageEventImpl &&
            (identical(other.next, next) || other.next == next));
  }

  @override
  int get hashCode => Object.hash(runtimeType, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPokedexNextPageEventImplCopyWith<_$GetPokedexNextPageEventImpl>
      get copyWith => __$$GetPokedexNextPageEventImplCopyWithImpl<
          _$GetPokedexNextPageEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPokedex,
    required TResult Function(String next) fetchPokedexNextPage,
  }) {
    return fetchPokedexNextPage(next);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPokedex,
    TResult? Function(String next)? fetchPokedexNextPage,
  }) {
    return fetchPokedexNextPage?.call(next);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPokedex,
    TResult Function(String next)? fetchPokedexNextPage,
    required TResult orElse(),
  }) {
    if (fetchPokedexNextPage != null) {
      return fetchPokedexNextPage(next);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPokedexEvent value) fetchPokedex,
    required TResult Function(_GetPokedexNextPageEvent value)
        fetchPokedexNextPage,
  }) {
    return fetchPokedexNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPokedexEvent value)? fetchPokedex,
    TResult? Function(_GetPokedexNextPageEvent value)? fetchPokedexNextPage,
  }) {
    return fetchPokedexNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPokedexEvent value)? fetchPokedex,
    TResult Function(_GetPokedexNextPageEvent value)? fetchPokedexNextPage,
    required TResult orElse(),
  }) {
    if (fetchPokedexNextPage != null) {
      return fetchPokedexNextPage(this);
    }
    return orElse();
  }
}

abstract class _GetPokedexNextPageEvent implements PokedexEvent {
  const factory _GetPokedexNextPageEvent(final String next) =
      _$GetPokedexNextPageEventImpl;

  String get next;
  @JsonKey(ignore: true)
  _$$GetPokedexNextPageEventImplCopyWith<_$GetPokedexNextPageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PokedexState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PokedexResponseEntity? pokedex) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PokedexResponseEntity? pokedex)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PokedexResponseEntity? pokedex)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PokedexLoadingState value) loading,
    required TResult Function(_PokedexSuccessState value) success,
    required TResult Function(_PokedexFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PokedexLoadingState value)? loading,
    TResult? Function(_PokedexSuccessState value)? success,
    TResult? Function(_PokedexFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PokedexLoadingState value)? loading,
    TResult Function(_PokedexSuccessState value)? success,
    TResult Function(_PokedexFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokedexStateCopyWith<$Res> {
  factory $PokedexStateCopyWith(
          PokedexState value, $Res Function(PokedexState) then) =
      _$PokedexStateCopyWithImpl<$Res, PokedexState>;
}

/// @nodoc
class _$PokedexStateCopyWithImpl<$Res, $Val extends PokedexState>
    implements $PokedexStateCopyWith<$Res> {
  _$PokedexStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PokedexState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PokedexResponseEntity? pokedex) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PokedexResponseEntity? pokedex)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PokedexResponseEntity? pokedex)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PokedexLoadingState value) loading,
    required TResult Function(_PokedexSuccessState value) success,
    required TResult Function(_PokedexFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PokedexLoadingState value)? loading,
    TResult? Function(_PokedexSuccessState value)? success,
    TResult? Function(_PokedexFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PokedexLoadingState value)? loading,
    TResult Function(_PokedexSuccessState value)? success,
    TResult Function(_PokedexFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PokedexState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PokedexLoadingStateImplCopyWith<$Res> {
  factory _$$PokedexLoadingStateImplCopyWith(_$PokedexLoadingStateImpl value,
          $Res Function(_$PokedexLoadingStateImpl) then) =
      __$$PokedexLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PokedexLoadingStateImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$PokedexLoadingStateImpl>
    implements _$$PokedexLoadingStateImplCopyWith<$Res> {
  __$$PokedexLoadingStateImplCopyWithImpl(_$PokedexLoadingStateImpl _value,
      $Res Function(_$PokedexLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PokedexLoadingStateImpl implements _PokedexLoadingState {
  const _$PokedexLoadingStateImpl();

  @override
  String toString() {
    return 'PokedexState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PokedexResponseEntity? pokedex) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PokedexResponseEntity? pokedex)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PokedexResponseEntity? pokedex)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PokedexLoadingState value) loading,
    required TResult Function(_PokedexSuccessState value) success,
    required TResult Function(_PokedexFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PokedexLoadingState value)? loading,
    TResult? Function(_PokedexSuccessState value)? success,
    TResult? Function(_PokedexFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PokedexLoadingState value)? loading,
    TResult Function(_PokedexSuccessState value)? success,
    TResult Function(_PokedexFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PokedexLoadingState implements PokedexState {
  const factory _PokedexLoadingState() = _$PokedexLoadingStateImpl;
}

/// @nodoc
abstract class _$$PokedexSuccessStateImplCopyWith<$Res> {
  factory _$$PokedexSuccessStateImplCopyWith(_$PokedexSuccessStateImpl value,
          $Res Function(_$PokedexSuccessStateImpl) then) =
      __$$PokedexSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PokedexResponseEntity? pokedex});

  $PokedexResponseEntityCopyWith<$Res>? get pokedex;
}

/// @nodoc
class __$$PokedexSuccessStateImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$PokedexSuccessStateImpl>
    implements _$$PokedexSuccessStateImplCopyWith<$Res> {
  __$$PokedexSuccessStateImplCopyWithImpl(_$PokedexSuccessStateImpl _value,
      $Res Function(_$PokedexSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokedex = freezed,
  }) {
    return _then(_$PokedexSuccessStateImpl(
      pokedex: freezed == pokedex
          ? _value.pokedex
          : pokedex // ignore: cast_nullable_to_non_nullable
              as PokedexResponseEntity?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PokedexResponseEntityCopyWith<$Res>? get pokedex {
    if (_value.pokedex == null) {
      return null;
    }

    return $PokedexResponseEntityCopyWith<$Res>(_value.pokedex!, (value) {
      return _then(_value.copyWith(pokedex: value));
    });
  }
}

/// @nodoc

class _$PokedexSuccessStateImpl implements _PokedexSuccessState {
  const _$PokedexSuccessStateImpl({required this.pokedex});

  @override
  final PokedexResponseEntity? pokedex;

  @override
  String toString() {
    return 'PokedexState.success(pokedex: $pokedex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexSuccessStateImpl &&
            (identical(other.pokedex, pokedex) || other.pokedex == pokedex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokedex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexSuccessStateImplCopyWith<_$PokedexSuccessStateImpl> get copyWith =>
      __$$PokedexSuccessStateImplCopyWithImpl<_$PokedexSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PokedexResponseEntity? pokedex) success,
    required TResult Function(String message) failure,
  }) {
    return success(pokedex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PokedexResponseEntity? pokedex)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(pokedex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PokedexResponseEntity? pokedex)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(pokedex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PokedexLoadingState value) loading,
    required TResult Function(_PokedexSuccessState value) success,
    required TResult Function(_PokedexFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PokedexLoadingState value)? loading,
    TResult? Function(_PokedexSuccessState value)? success,
    TResult? Function(_PokedexFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PokedexLoadingState value)? loading,
    TResult Function(_PokedexSuccessState value)? success,
    TResult Function(_PokedexFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PokedexSuccessState implements PokedexState {
  const factory _PokedexSuccessState(
          {required final PokedexResponseEntity? pokedex}) =
      _$PokedexSuccessStateImpl;

  PokedexResponseEntity? get pokedex;
  @JsonKey(ignore: true)
  _$$PokedexSuccessStateImplCopyWith<_$PokedexSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PokedexFailureStateImplCopyWith<$Res> {
  factory _$$PokedexFailureStateImplCopyWith(_$PokedexFailureStateImpl value,
          $Res Function(_$PokedexFailureStateImpl) then) =
      __$$PokedexFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PokedexFailureStateImplCopyWithImpl<$Res>
    extends _$PokedexStateCopyWithImpl<$Res, _$PokedexFailureStateImpl>
    implements _$$PokedexFailureStateImplCopyWith<$Res> {
  __$$PokedexFailureStateImplCopyWithImpl(_$PokedexFailureStateImpl _value,
      $Res Function(_$PokedexFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PokedexFailureStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PokedexFailureStateImpl implements _PokedexFailureState {
  const _$PokedexFailureStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PokedexState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokedexFailureStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokedexFailureStateImplCopyWith<_$PokedexFailureStateImpl> get copyWith =>
      __$$PokedexFailureStateImplCopyWithImpl<_$PokedexFailureStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PokedexResponseEntity? pokedex) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PokedexResponseEntity? pokedex)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PokedexResponseEntity? pokedex)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_PokedexLoadingState value) loading,
    required TResult Function(_PokedexSuccessState value) success,
    required TResult Function(_PokedexFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_PokedexLoadingState value)? loading,
    TResult? Function(_PokedexSuccessState value)? success,
    TResult? Function(_PokedexFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_PokedexLoadingState value)? loading,
    TResult Function(_PokedexSuccessState value)? success,
    TResult Function(_PokedexFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PokedexFailureState implements PokedexState {
  const factory _PokedexFailureState({required final String message}) =
      _$PokedexFailureStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PokedexFailureStateImplCopyWith<_$PokedexFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
