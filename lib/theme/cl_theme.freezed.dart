// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cl_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CLThemeTearOff {
  const _$CLThemeTearOff();

  _CLTheme call(
      {required DesignSystem designSystem,
      required Brightness brightness,
      required bool isIOS,
      required AdaptiveWindowType adaptiveWindowType}) {
    return _CLTheme(
      designSystem: designSystem,
      brightness: brightness,
      isIOS: isIOS,
      adaptiveWindowType: adaptiveWindowType,
    );
  }
}

/// @nodoc
const $CLTheme = _$CLThemeTearOff();

/// @nodoc
mixin _$CLTheme {
  DesignSystem get designSystem => throw _privateConstructorUsedError;
  Brightness get brightness => throw _privateConstructorUsedError;
  bool get isIOS => throw _privateConstructorUsedError;
  AdaptiveWindowType get adaptiveWindowType =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CLThemeCopyWith<CLTheme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CLThemeCopyWith<$Res> {
  factory $CLThemeCopyWith(CLTheme value, $Res Function(CLTheme) then) =
      _$CLThemeCopyWithImpl<$Res>;
  $Res call(
      {DesignSystem designSystem,
      Brightness brightness,
      bool isIOS,
      AdaptiveWindowType adaptiveWindowType});
}

/// @nodoc
class _$CLThemeCopyWithImpl<$Res> implements $CLThemeCopyWith<$Res> {
  _$CLThemeCopyWithImpl(this._value, this._then);

  final CLTheme _value;
  // ignore: unused_field
  final $Res Function(CLTheme) _then;

  @override
  $Res call({
    Object? designSystem = freezed,
    Object? brightness = freezed,
    Object? isIOS = freezed,
    Object? adaptiveWindowType = freezed,
  }) {
    return _then(_value.copyWith(
      designSystem: designSystem == freezed
          ? _value.designSystem
          : designSystem // ignore: cast_nullable_to_non_nullable
              as DesignSystem,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
      isIOS: isIOS == freezed
          ? _value.isIOS
          : isIOS // ignore: cast_nullable_to_non_nullable
              as bool,
      adaptiveWindowType: adaptiveWindowType == freezed
          ? _value.adaptiveWindowType
          : adaptiveWindowType // ignore: cast_nullable_to_non_nullable
              as AdaptiveWindowType,
    ));
  }
}

/// @nodoc
abstract class _$CLThemeCopyWith<$Res> implements $CLThemeCopyWith<$Res> {
  factory _$CLThemeCopyWith(_CLTheme value, $Res Function(_CLTheme) then) =
      __$CLThemeCopyWithImpl<$Res>;
  @override
  $Res call(
      {DesignSystem designSystem,
      Brightness brightness,
      bool isIOS,
      AdaptiveWindowType adaptiveWindowType});
}

/// @nodoc
class __$CLThemeCopyWithImpl<$Res> extends _$CLThemeCopyWithImpl<$Res>
    implements _$CLThemeCopyWith<$Res> {
  __$CLThemeCopyWithImpl(_CLTheme _value, $Res Function(_CLTheme) _then)
      : super(_value, (v) => _then(v as _CLTheme));

  @override
  _CLTheme get _value => super._value as _CLTheme;

  @override
  $Res call({
    Object? designSystem = freezed,
    Object? brightness = freezed,
    Object? isIOS = freezed,
    Object? adaptiveWindowType = freezed,
  }) {
    return _then(_CLTheme(
      designSystem: designSystem == freezed
          ? _value.designSystem
          : designSystem // ignore: cast_nullable_to_non_nullable
              as DesignSystem,
      brightness: brightness == freezed
          ? _value.brightness
          : brightness // ignore: cast_nullable_to_non_nullable
              as Brightness,
      isIOS: isIOS == freezed
          ? _value.isIOS
          : isIOS // ignore: cast_nullable_to_non_nullable
              as bool,
      adaptiveWindowType: adaptiveWindowType == freezed
          ? _value.adaptiveWindowType
          : adaptiveWindowType // ignore: cast_nullable_to_non_nullable
              as AdaptiveWindowType,
    ));
  }
}

/// @nodoc

class _$_CLTheme extends _CLTheme {
  _$_CLTheme(
      {required this.designSystem,
      required this.brightness,
      required this.isIOS,
      required this.adaptiveWindowType})
      : super._();

  @override
  final DesignSystem designSystem;
  @override
  final Brightness brightness;
  @override
  final bool isIOS;
  @override
  final AdaptiveWindowType adaptiveWindowType;

  @override
  String toString() {
    return 'CLTheme(designSystem: $designSystem, brightness: $brightness, isIOS: $isIOS, adaptiveWindowType: $adaptiveWindowType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CLTheme &&
            const DeepCollectionEquality()
                .equals(other.designSystem, designSystem) &&
            const DeepCollectionEquality()
                .equals(other.brightness, brightness) &&
            const DeepCollectionEquality().equals(other.isIOS, isIOS) &&
            const DeepCollectionEquality()
                .equals(other.adaptiveWindowType, adaptiveWindowType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(designSystem),
      const DeepCollectionEquality().hash(brightness),
      const DeepCollectionEquality().hash(isIOS),
      const DeepCollectionEquality().hash(adaptiveWindowType));

  @JsonKey(ignore: true)
  @override
  _$CLThemeCopyWith<_CLTheme> get copyWith =>
      __$CLThemeCopyWithImpl<_CLTheme>(this, _$identity);
}

abstract class _CLTheme extends CLTheme {
  factory _CLTheme(
      {required DesignSystem designSystem,
      required Brightness brightness,
      required bool isIOS,
      required AdaptiveWindowType adaptiveWindowType}) = _$_CLTheme;
  _CLTheme._() : super._();

  @override
  DesignSystem get designSystem;
  @override
  Brightness get brightness;
  @override
  bool get isIOS;
  @override
  AdaptiveWindowType get adaptiveWindowType;
  @override
  @JsonKey(ignore: true)
  _$CLThemeCopyWith<_CLTheme> get copyWith =>
      throw _privateConstructorUsedError;
}
