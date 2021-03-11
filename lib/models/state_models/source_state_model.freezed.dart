// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'source_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SourceStateTearOff {
  const _$SourceStateTearOff();

  Start loading() {
    return const Start();
  }

  NotLogged notLogged() {
    return const NotLogged();
  }

  Logged logged() {
    return const Logged();
  }
}

/// @nodoc
const $SourceState = _$SourceStateTearOff();

/// @nodoc
mixin _$SourceState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    TResult Function() loading,
    TResult Function() notLogged,
    TResult Function() logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult Function() loading,
    TResult Function() notLogged,
    TResult Function() logged,
    TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    TResult Function(Start value) loading,
    TResult Function(NotLogged value) notLogged,
    TResult Function(Logged value) logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult Function(Start value) loading,
    TResult Function(NotLogged value) notLogged,
    TResult Function(Logged value) logged,
    TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceStateCopyWith<$Res> {
  factory $SourceStateCopyWith(
          SourceState value, $Res Function(SourceState) then) =
      _$SourceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SourceStateCopyWithImpl<$Res> implements $SourceStateCopyWith<$Res> {
  _$SourceStateCopyWithImpl(this._value, this._then);

  final SourceState _value;
  // ignore: unused_field
  final $Res Function(SourceState) _then;
}

/// @nodoc
abstract class $StartCopyWith<$Res> {
  factory $StartCopyWith(Start value, $Res Function(Start) then) =
      _$StartCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartCopyWithImpl<$Res> extends _$SourceStateCopyWithImpl<$Res>
    implements $StartCopyWith<$Res> {
  _$StartCopyWithImpl(Start _value, $Res Function(Start) _then)
      : super(_value, (v) => _then(v as Start));

  @override
  Start get _value => super._value as Start;
}

/// @nodoc
class _$Start implements Start {
  const _$Start();

  @override
  String toString() {
    return 'SourceState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    TResult Function() loading,
    TResult Function() notLogged,
    TResult Function() logged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult Function() loading,
    TResult Function() notLogged,
    TResult Function() logged,
    TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    TResult Function(Start value) loading,
    TResult Function(NotLogged value) notLogged,
    TResult Function(Logged value) logged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult Function(Start value) loading,
    TResult Function(NotLogged value) notLogged,
    TResult Function(Logged value) logged,
    TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Start implements SourceState {
  const factory Start() = _$Start;
}

/// @nodoc
abstract class $NotLoggedCopyWith<$Res> {
  factory $NotLoggedCopyWith(NotLogged value, $Res Function(NotLogged) then) =
      _$NotLoggedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotLoggedCopyWithImpl<$Res> extends _$SourceStateCopyWithImpl<$Res>
    implements $NotLoggedCopyWith<$Res> {
  _$NotLoggedCopyWithImpl(NotLogged _value, $Res Function(NotLogged) _then)
      : super(_value, (v) => _then(v as NotLogged));

  @override
  NotLogged get _value => super._value as NotLogged;
}

/// @nodoc
class _$NotLogged implements NotLogged {
  const _$NotLogged();

  @override
  String toString() {
    return 'SourceState.notLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotLogged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    TResult Function() loading,
    TResult Function() notLogged,
    TResult Function() logged,
  }) {
    return notLogged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult Function() loading,
    TResult Function() notLogged,
    TResult Function() logged,
    TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    TResult Function(Start value) loading,
    TResult Function(NotLogged value) notLogged,
    TResult Function(Logged value) logged,
  }) {
    return notLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult Function(Start value) loading,
    TResult Function(NotLogged value) notLogged,
    TResult Function(Logged value) logged,
    TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged(this);
    }
    return orElse();
  }
}

abstract class NotLogged implements SourceState {
  const factory NotLogged() = _$NotLogged;
}

/// @nodoc
abstract class $LoggedCopyWith<$Res> {
  factory $LoggedCopyWith(Logged value, $Res Function(Logged) then) =
      _$LoggedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoggedCopyWithImpl<$Res> extends _$SourceStateCopyWithImpl<$Res>
    implements $LoggedCopyWith<$Res> {
  _$LoggedCopyWithImpl(Logged _value, $Res Function(Logged) _then)
      : super(_value, (v) => _then(v as Logged));

  @override
  Logged get _value => super._value as Logged;
}

/// @nodoc
class _$Logged implements Logged {
  const _$Logged();

  @override
  String toString() {
    return 'SourceState.logged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Logged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    TResult Function() loading,
    TResult Function() notLogged,
    TResult Function() logged,
  }) {
    return logged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult Function() loading,
    TResult Function() notLogged,
    TResult Function() logged,
    TResult orElse(),
  }) {
    if (logged != null) {
      return logged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    TResult Function(Start value) loading,
    TResult Function(NotLogged value) notLogged,
    TResult Function(Logged value) logged,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult Function(Start value) loading,
    TResult Function(NotLogged value) notLogged,
    TResult Function(Logged value) logged,
    TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class Logged implements SourceState {
  const factory Logged() = _$Logged;
}
