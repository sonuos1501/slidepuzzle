// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playboard_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayboardConfig {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ButtonColors color) blind,
    required TResult Function(ButtonColors color) number,
    required TResult Function(Map<String, PlayboardConfig> configs) multiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(ButtonColors color)? blind,
    TResult? Function(ButtonColors color)? number,
    TResult? Function(Map<String, PlayboardConfig> configs)? multiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ButtonColors color)? blind,
    TResult Function(ButtonColors color)? number,
    TResult Function(Map<String, PlayboardConfig> configs)? multiple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NonePlayboardConfig value) none,
    required TResult Function(BlindPlayboardConfig value) blind,
    required TResult Function(NumberPlayboardConfig value) number,
    required TResult Function(MultiplePlayboardConfig value) multiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NonePlayboardConfig value)? none,
    TResult? Function(BlindPlayboardConfig value)? blind,
    TResult? Function(NumberPlayboardConfig value)? number,
    TResult? Function(MultiplePlayboardConfig value)? multiple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NonePlayboardConfig value)? none,
    TResult Function(BlindPlayboardConfig value)? blind,
    TResult Function(NumberPlayboardConfig value)? number,
    TResult Function(MultiplePlayboardConfig value)? multiple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayboardConfigCopyWith<$Res> {
  factory $PlayboardConfigCopyWith(
          PlayboardConfig value, $Res Function(PlayboardConfig) then) =
      _$PlayboardConfigCopyWithImpl<$Res, PlayboardConfig>;
}

/// @nodoc
class _$PlayboardConfigCopyWithImpl<$Res, $Val extends PlayboardConfig>
    implements $PlayboardConfigCopyWith<$Res> {
  _$PlayboardConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NonePlayboardConfigCopyWith<$Res> {
  factory _$$NonePlayboardConfigCopyWith(_$NonePlayboardConfig value,
          $Res Function(_$NonePlayboardConfig) then) =
      __$$NonePlayboardConfigCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NonePlayboardConfigCopyWithImpl<$Res>
    extends _$PlayboardConfigCopyWithImpl<$Res, _$NonePlayboardConfig>
    implements _$$NonePlayboardConfigCopyWith<$Res> {
  __$$NonePlayboardConfigCopyWithImpl(
      _$NonePlayboardConfig _value, $Res Function(_$NonePlayboardConfig) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NonePlayboardConfig implements NonePlayboardConfig {
  const _$NonePlayboardConfig();

  @override
  String toString() {
    return 'PlayboardConfig.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NonePlayboardConfig);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ButtonColors color) blind,
    required TResult Function(ButtonColors color) number,
    required TResult Function(Map<String, PlayboardConfig> configs) multiple,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(ButtonColors color)? blind,
    TResult? Function(ButtonColors color)? number,
    TResult? Function(Map<String, PlayboardConfig> configs)? multiple,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ButtonColors color)? blind,
    TResult Function(ButtonColors color)? number,
    TResult Function(Map<String, PlayboardConfig> configs)? multiple,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NonePlayboardConfig value) none,
    required TResult Function(BlindPlayboardConfig value) blind,
    required TResult Function(NumberPlayboardConfig value) number,
    required TResult Function(MultiplePlayboardConfig value) multiple,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NonePlayboardConfig value)? none,
    TResult? Function(BlindPlayboardConfig value)? blind,
    TResult? Function(NumberPlayboardConfig value)? number,
    TResult? Function(MultiplePlayboardConfig value)? multiple,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NonePlayboardConfig value)? none,
    TResult Function(BlindPlayboardConfig value)? blind,
    TResult Function(NumberPlayboardConfig value)? number,
    TResult Function(MultiplePlayboardConfig value)? multiple,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class NonePlayboardConfig implements PlayboardConfig {
  const factory NonePlayboardConfig() = _$NonePlayboardConfig;
}

/// @nodoc
abstract class _$$BlindPlayboardConfigCopyWith<$Res> {
  factory _$$BlindPlayboardConfigCopyWith(_$BlindPlayboardConfig value,
          $Res Function(_$BlindPlayboardConfig) then) =
      __$$BlindPlayboardConfigCopyWithImpl<$Res>;
  @useResult
  $Res call({ButtonColors color});
}

/// @nodoc
class __$$BlindPlayboardConfigCopyWithImpl<$Res>
    extends _$PlayboardConfigCopyWithImpl<$Res, _$BlindPlayboardConfig>
    implements _$$BlindPlayboardConfigCopyWith<$Res> {
  __$$BlindPlayboardConfigCopyWithImpl(_$BlindPlayboardConfig _value,
      $Res Function(_$BlindPlayboardConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$BlindPlayboardConfig(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ButtonColors,
    ));
  }
}

/// @nodoc

class _$BlindPlayboardConfig implements BlindPlayboardConfig {
  const _$BlindPlayboardConfig(this.color);

  @override
  final ButtonColors color;

  @override
  String toString() {
    return 'PlayboardConfig.blind(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlindPlayboardConfig &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlindPlayboardConfigCopyWith<_$BlindPlayboardConfig> get copyWith =>
      __$$BlindPlayboardConfigCopyWithImpl<_$BlindPlayboardConfig>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ButtonColors color) blind,
    required TResult Function(ButtonColors color) number,
    required TResult Function(Map<String, PlayboardConfig> configs) multiple,
  }) {
    return blind(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(ButtonColors color)? blind,
    TResult? Function(ButtonColors color)? number,
    TResult? Function(Map<String, PlayboardConfig> configs)? multiple,
  }) {
    return blind?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ButtonColors color)? blind,
    TResult Function(ButtonColors color)? number,
    TResult Function(Map<String, PlayboardConfig> configs)? multiple,
    required TResult orElse(),
  }) {
    if (blind != null) {
      return blind(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NonePlayboardConfig value) none,
    required TResult Function(BlindPlayboardConfig value) blind,
    required TResult Function(NumberPlayboardConfig value) number,
    required TResult Function(MultiplePlayboardConfig value) multiple,
  }) {
    return blind(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NonePlayboardConfig value)? none,
    TResult? Function(BlindPlayboardConfig value)? blind,
    TResult? Function(NumberPlayboardConfig value)? number,
    TResult? Function(MultiplePlayboardConfig value)? multiple,
  }) {
    return blind?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NonePlayboardConfig value)? none,
    TResult Function(BlindPlayboardConfig value)? blind,
    TResult Function(NumberPlayboardConfig value)? number,
    TResult Function(MultiplePlayboardConfig value)? multiple,
    required TResult orElse(),
  }) {
    if (blind != null) {
      return blind(this);
    }
    return orElse();
  }
}

abstract class BlindPlayboardConfig implements PlayboardConfig {
  const factory BlindPlayboardConfig(final ButtonColors color) =
      _$BlindPlayboardConfig;

  ButtonColors get color;
  @JsonKey(ignore: true)
  _$$BlindPlayboardConfigCopyWith<_$BlindPlayboardConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberPlayboardConfigCopyWith<$Res> {
  factory _$$NumberPlayboardConfigCopyWith(_$NumberPlayboardConfig value,
          $Res Function(_$NumberPlayboardConfig) then) =
      __$$NumberPlayboardConfigCopyWithImpl<$Res>;
  @useResult
  $Res call({ButtonColors color});
}

/// @nodoc
class __$$NumberPlayboardConfigCopyWithImpl<$Res>
    extends _$PlayboardConfigCopyWithImpl<$Res, _$NumberPlayboardConfig>
    implements _$$NumberPlayboardConfigCopyWith<$Res> {
  __$$NumberPlayboardConfigCopyWithImpl(_$NumberPlayboardConfig _value,
      $Res Function(_$NumberPlayboardConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$NumberPlayboardConfig(
      null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ButtonColors,
    ));
  }
}

/// @nodoc

class _$NumberPlayboardConfig implements NumberPlayboardConfig {
  const _$NumberPlayboardConfig(this.color);

  @override
  final ButtonColors color;

  @override
  String toString() {
    return 'PlayboardConfig.number(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberPlayboardConfig &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberPlayboardConfigCopyWith<_$NumberPlayboardConfig> get copyWith =>
      __$$NumberPlayboardConfigCopyWithImpl<_$NumberPlayboardConfig>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ButtonColors color) blind,
    required TResult Function(ButtonColors color) number,
    required TResult Function(Map<String, PlayboardConfig> configs) multiple,
  }) {
    return number(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(ButtonColors color)? blind,
    TResult? Function(ButtonColors color)? number,
    TResult? Function(Map<String, PlayboardConfig> configs)? multiple,
  }) {
    return number?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ButtonColors color)? blind,
    TResult Function(ButtonColors color)? number,
    TResult Function(Map<String, PlayboardConfig> configs)? multiple,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NonePlayboardConfig value) none,
    required TResult Function(BlindPlayboardConfig value) blind,
    required TResult Function(NumberPlayboardConfig value) number,
    required TResult Function(MultiplePlayboardConfig value) multiple,
  }) {
    return number(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NonePlayboardConfig value)? none,
    TResult? Function(BlindPlayboardConfig value)? blind,
    TResult? Function(NumberPlayboardConfig value)? number,
    TResult? Function(MultiplePlayboardConfig value)? multiple,
  }) {
    return number?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NonePlayboardConfig value)? none,
    TResult Function(BlindPlayboardConfig value)? blind,
    TResult Function(NumberPlayboardConfig value)? number,
    TResult Function(MultiplePlayboardConfig value)? multiple,
    required TResult orElse(),
  }) {
    if (number != null) {
      return number(this);
    }
    return orElse();
  }
}

abstract class NumberPlayboardConfig implements PlayboardConfig {
  const factory NumberPlayboardConfig(final ButtonColors color) =
      _$NumberPlayboardConfig;

  ButtonColors get color;
  @JsonKey(ignore: true)
  _$$NumberPlayboardConfigCopyWith<_$NumberPlayboardConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiplePlayboardConfigCopyWith<$Res> {
  factory _$$MultiplePlayboardConfigCopyWith(_$MultiplePlayboardConfig value,
          $Res Function(_$MultiplePlayboardConfig) then) =
      __$$MultiplePlayboardConfigCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, PlayboardConfig> configs});
}

/// @nodoc
class __$$MultiplePlayboardConfigCopyWithImpl<$Res>
    extends _$PlayboardConfigCopyWithImpl<$Res, _$MultiplePlayboardConfig>
    implements _$$MultiplePlayboardConfigCopyWith<$Res> {
  __$$MultiplePlayboardConfigCopyWithImpl(_$MultiplePlayboardConfig _value,
      $Res Function(_$MultiplePlayboardConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? configs = null,
  }) {
    return _then(_$MultiplePlayboardConfig(
      null == configs
          ? _value._configs
          : configs // ignore: cast_nullable_to_non_nullable
              as Map<String, PlayboardConfig>,
    ));
  }
}

/// @nodoc

class _$MultiplePlayboardConfig implements MultiplePlayboardConfig {
  const _$MultiplePlayboardConfig(final Map<String, PlayboardConfig> configs)
      : _configs = configs;

  final Map<String, PlayboardConfig> _configs;
  @override
  Map<String, PlayboardConfig> get configs {
    if (_configs is EqualUnmodifiableMapView) return _configs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configs);
  }

  @override
  String toString() {
    return 'PlayboardConfig.multiple(configs: $configs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiplePlayboardConfig &&
            const DeepCollectionEquality().equals(other._configs, _configs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_configs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiplePlayboardConfigCopyWith<_$MultiplePlayboardConfig> get copyWith =>
      __$$MultiplePlayboardConfigCopyWithImpl<_$MultiplePlayboardConfig>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function(ButtonColors color) blind,
    required TResult Function(ButtonColors color) number,
    required TResult Function(Map<String, PlayboardConfig> configs) multiple,
  }) {
    return multiple(configs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function(ButtonColors color)? blind,
    TResult? Function(ButtonColors color)? number,
    TResult? Function(Map<String, PlayboardConfig> configs)? multiple,
  }) {
    return multiple?.call(configs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function(ButtonColors color)? blind,
    TResult Function(ButtonColors color)? number,
    TResult Function(Map<String, PlayboardConfig> configs)? multiple,
    required TResult orElse(),
  }) {
    if (multiple != null) {
      return multiple(configs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NonePlayboardConfig value) none,
    required TResult Function(BlindPlayboardConfig value) blind,
    required TResult Function(NumberPlayboardConfig value) number,
    required TResult Function(MultiplePlayboardConfig value) multiple,
  }) {
    return multiple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NonePlayboardConfig value)? none,
    TResult? Function(BlindPlayboardConfig value)? blind,
    TResult? Function(NumberPlayboardConfig value)? number,
    TResult? Function(MultiplePlayboardConfig value)? multiple,
  }) {
    return multiple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NonePlayboardConfig value)? none,
    TResult Function(BlindPlayboardConfig value)? blind,
    TResult Function(NumberPlayboardConfig value)? number,
    TResult Function(MultiplePlayboardConfig value)? multiple,
    required TResult orElse(),
  }) {
    if (multiple != null) {
      return multiple(this);
    }
    return orElse();
  }
}

abstract class MultiplePlayboardConfig implements PlayboardConfig {
  const factory MultiplePlayboardConfig(
      final Map<String, PlayboardConfig> configs) = _$MultiplePlayboardConfig;

  Map<String, PlayboardConfig> get configs;
  @JsonKey(ignore: true)
  _$$MultiplePlayboardConfigCopyWith<_$MultiplePlayboardConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
