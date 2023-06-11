// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(LocalUser? localUser) authenticationChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribe,
    TResult? Function(LocalUser? localUser)? authenticationChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(LocalUser? localUser)? authenticationChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_AuthenticationChange value) authenticationChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_AuthenticationChange value)? authenticationChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_AuthenticationChange value)? authenticationChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SubscribeCopyWith<$Res> {
  factory _$$_SubscribeCopyWith(
          _$_Subscribe value, $Res Function(_$_Subscribe) then) =
      __$$_SubscribeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubscribeCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_Subscribe>
    implements _$$_SubscribeCopyWith<$Res> {
  __$$_SubscribeCopyWithImpl(
      _$_Subscribe _value, $Res Function(_$_Subscribe) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Subscribe implements _Subscribe {
  const _$_Subscribe();

  @override
  String toString() {
    return 'AuthenticationEvent.subscribe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Subscribe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(LocalUser? localUser) authenticationChange,
  }) {
    return subscribe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribe,
    TResult? Function(LocalUser? localUser)? authenticationChange,
  }) {
    return subscribe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(LocalUser? localUser)? authenticationChange,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_AuthenticationChange value) authenticationChange,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_AuthenticationChange value)? authenticationChange,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_AuthenticationChange value)? authenticationChange,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _Subscribe implements AuthenticationEvent {
  const factory _Subscribe() = _$_Subscribe;
}

/// @nodoc
abstract class _$$_AuthenticationChangeCopyWith<$Res> {
  factory _$$_AuthenticationChangeCopyWith(_$_AuthenticationChange value,
          $Res Function(_$_AuthenticationChange) then) =
      __$$_AuthenticationChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({LocalUser? localUser});

  $LocalUserCopyWith<$Res>? get localUser;
}

/// @nodoc
class __$$_AuthenticationChangeCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_AuthenticationChange>
    implements _$$_AuthenticationChangeCopyWith<$Res> {
  __$$_AuthenticationChangeCopyWithImpl(_$_AuthenticationChange _value,
      $Res Function(_$_AuthenticationChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localUser = freezed,
  }) {
    return _then(_$_AuthenticationChange(
      localUser: freezed == localUser
          ? _value.localUser
          : localUser // ignore: cast_nullable_to_non_nullable
              as LocalUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalUserCopyWith<$Res>? get localUser {
    if (_value.localUser == null) {
      return null;
    }

    return $LocalUserCopyWith<$Res>(_value.localUser!, (value) {
      return _then(_value.copyWith(localUser: value));
    });
  }
}

/// @nodoc

class _$_AuthenticationChange implements _AuthenticationChange {
  const _$_AuthenticationChange({required this.localUser});

  @override
  final LocalUser? localUser;

  @override
  String toString() {
    return 'AuthenticationEvent.authenticationChange(localUser: $localUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationChange &&
            (identical(other.localUser, localUser) ||
                other.localUser == localUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationChangeCopyWith<_$_AuthenticationChange> get copyWith =>
      __$$_AuthenticationChangeCopyWithImpl<_$_AuthenticationChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribe,
    required TResult Function(LocalUser? localUser) authenticationChange,
  }) {
    return authenticationChange(localUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribe,
    TResult? Function(LocalUser? localUser)? authenticationChange,
  }) {
    return authenticationChange?.call(localUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribe,
    TResult Function(LocalUser? localUser)? authenticationChange,
    required TResult orElse(),
  }) {
    if (authenticationChange != null) {
      return authenticationChange(localUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_AuthenticationChange value) authenticationChange,
  }) {
    return authenticationChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_AuthenticationChange value)? authenticationChange,
  }) {
    return authenticationChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_AuthenticationChange value)? authenticationChange,
    required TResult orElse(),
  }) {
    if (authenticationChange != null) {
      return authenticationChange(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationChange implements AuthenticationEvent {
  const factory _AuthenticationChange({required final LocalUser? localUser}) =
      _$_AuthenticationChange;

  LocalUser? get localUser;
  @JsonKey(ignore: true)
  _$$_AuthenticationChangeCopyWith<_$_AuthenticationChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(LocalUser? localUser) signedInState,
    required TResult Function() signedOutState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(LocalUser? localUser)? signedInState,
    TResult? Function()? signedOutState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(LocalUser? localUser)? signedInState,
    TResult Function()? signedOutState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignedInState value) signedInState,
    required TResult Function(_SignedOutState value) signedOutState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_SignedInState value)? signedInState,
    TResult? Function(_SignedOutState value)? signedOutState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignedInState value)? signedInState,
    TResult Function(_SignedOutState value)? signedOutState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'AuthenticationState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(LocalUser? localUser) signedInState,
    required TResult Function() signedOutState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(LocalUser? localUser)? signedInState,
    TResult? Function()? signedOutState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(LocalUser? localUser)? signedInState,
    TResult Function()? signedOutState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignedInState value) signedInState,
    required TResult Function(_SignedOutState value) signedOutState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_SignedInState value)? signedInState,
    TResult? Function(_SignedOutState value)? signedOutState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignedInState value)? signedInState,
    TResult Function(_SignedOutState value)? signedOutState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AuthenticationState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'AuthenticationState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(LocalUser? localUser) signedInState,
    required TResult Function() signedOutState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(LocalUser? localUser)? signedInState,
    TResult? Function()? signedOutState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(LocalUser? localUser)? signedInState,
    TResult Function()? signedOutState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignedInState value) signedInState,
    required TResult Function(_SignedOutState value) signedOutState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_SignedInState value)? signedInState,
    TResult? Function(_SignedOutState value)? signedOutState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignedInState value)? signedInState,
    TResult Function(_SignedOutState value)? signedOutState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AuthenticationState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_SignedInStateCopyWith<$Res> {
  factory _$$_SignedInStateCopyWith(
          _$_SignedInState value, $Res Function(_$_SignedInState) then) =
      __$$_SignedInStateCopyWithImpl<$Res>;
  @useResult
  $Res call({LocalUser? localUser});

  $LocalUserCopyWith<$Res>? get localUser;
}

/// @nodoc
class __$$_SignedInStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_SignedInState>
    implements _$$_SignedInStateCopyWith<$Res> {
  __$$_SignedInStateCopyWithImpl(
      _$_SignedInState _value, $Res Function(_$_SignedInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localUser = freezed,
  }) {
    return _then(_$_SignedInState(
      localUser: freezed == localUser
          ? _value.localUser
          : localUser // ignore: cast_nullable_to_non_nullable
              as LocalUser?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalUserCopyWith<$Res>? get localUser {
    if (_value.localUser == null) {
      return null;
    }

    return $LocalUserCopyWith<$Res>(_value.localUser!, (value) {
      return _then(_value.copyWith(localUser: value));
    });
  }
}

/// @nodoc

class _$_SignedInState implements _SignedInState {
  const _$_SignedInState({required this.localUser});

  @override
  final LocalUser? localUser;

  @override
  String toString() {
    return 'AuthenticationState.signedInState(localUser: $localUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignedInState &&
            (identical(other.localUser, localUser) ||
                other.localUser == localUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignedInStateCopyWith<_$_SignedInState> get copyWith =>
      __$$_SignedInStateCopyWithImpl<_$_SignedInState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(LocalUser? localUser) signedInState,
    required TResult Function() signedOutState,
  }) {
    return signedInState(localUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(LocalUser? localUser)? signedInState,
    TResult? Function()? signedOutState,
  }) {
    return signedInState?.call(localUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(LocalUser? localUser)? signedInState,
    TResult Function()? signedOutState,
    required TResult orElse(),
  }) {
    if (signedInState != null) {
      return signedInState(localUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignedInState value) signedInState,
    required TResult Function(_SignedOutState value) signedOutState,
  }) {
    return signedInState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_SignedInState value)? signedInState,
    TResult? Function(_SignedOutState value)? signedOutState,
  }) {
    return signedInState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignedInState value)? signedInState,
    TResult Function(_SignedOutState value)? signedOutState,
    required TResult orElse(),
  }) {
    if (signedInState != null) {
      return signedInState(this);
    }
    return orElse();
  }
}

abstract class _SignedInState implements AuthenticationState {
  const factory _SignedInState({required final LocalUser? localUser}) =
      _$_SignedInState;

  LocalUser? get localUser;
  @JsonKey(ignore: true)
  _$$_SignedInStateCopyWith<_$_SignedInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignedOutStateCopyWith<$Res> {
  factory _$$_SignedOutStateCopyWith(
          _$_SignedOutState value, $Res Function(_$_SignedOutState) then) =
      __$$_SignedOutStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedOutStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_SignedOutState>
    implements _$$_SignedOutStateCopyWith<$Res> {
  __$$_SignedOutStateCopyWithImpl(
      _$_SignedOutState _value, $Res Function(_$_SignedOutState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignedOutState implements _SignedOutState {
  const _$_SignedOutState();

  @override
  String toString() {
    return 'AuthenticationState.signedOutState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedOutState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(LocalUser? localUser) signedInState,
    required TResult Function() signedOutState,
  }) {
    return signedOutState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(LocalUser? localUser)? signedInState,
    TResult? Function()? signedOutState,
  }) {
    return signedOutState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(LocalUser? localUser)? signedInState,
    TResult Function()? signedOutState,
    required TResult orElse(),
  }) {
    if (signedOutState != null) {
      return signedOutState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SignedInState value) signedInState,
    required TResult Function(_SignedOutState value) signedOutState,
  }) {
    return signedOutState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_SignedInState value)? signedInState,
    TResult? Function(_SignedOutState value)? signedOutState,
  }) {
    return signedOutState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SignedInState value)? signedInState,
    TResult Function(_SignedOutState value)? signedOutState,
    required TResult orElse(),
  }) {
    if (signedOutState != null) {
      return signedOutState(this);
    }
    return orElse();
  }
}

abstract class _SignedOutState implements AuthenticationState {
  const factory _SignedOutState() = _$_SignedOutState;
}
