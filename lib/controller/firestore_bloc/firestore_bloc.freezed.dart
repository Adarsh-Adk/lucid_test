// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirestoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) subscribe,
    required TResult Function(List<Tweet> data, String? error) dataChanged,
    required TResult Function(Tweet tweet) addEditTweet,
    required TResult Function(Tweet tweet) deleteTweet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? subscribe,
    TResult? Function(List<Tweet> data, String? error)? dataChanged,
    TResult? Function(Tweet tweet)? addEditTweet,
    TResult? Function(Tweet tweet)? deleteTweet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? subscribe,
    TResult Function(List<Tweet> data, String? error)? dataChanged,
    TResult Function(Tweet tweet)? addEditTweet,
    TResult Function(Tweet tweet)? deleteTweet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_AddTweet value) addEditTweet,
    required TResult Function(_DeleteTweet value) deleteTweet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_AddTweet value)? addEditTweet,
    TResult? Function(_DeleteTweet value)? deleteTweet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_AddTweet value)? addEditTweet,
    TResult Function(_DeleteTweet value)? deleteTweet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreEventCopyWith<$Res> {
  factory $FirestoreEventCopyWith(
          FirestoreEvent value, $Res Function(FirestoreEvent) then) =
      _$FirestoreEventCopyWithImpl<$Res, FirestoreEvent>;
}

/// @nodoc
class _$FirestoreEventCopyWithImpl<$Res, $Val extends FirestoreEvent>
    implements $FirestoreEventCopyWith<$Res> {
  _$FirestoreEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$_SubscribeCopyWithImpl<$Res>
    extends _$FirestoreEventCopyWithImpl<$Res, _$_Subscribe>
    implements _$$_SubscribeCopyWith<$Res> {
  __$$_SubscribeCopyWithImpl(
      _$_Subscribe _value, $Res Function(_$_Subscribe) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$_Subscribe(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Subscribe implements _Subscribe {
  const _$_Subscribe({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'FirestoreEvent.subscribe(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Subscribe &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscribeCopyWith<_$_Subscribe> get copyWith =>
      __$$_SubscribeCopyWithImpl<_$_Subscribe>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) subscribe,
    required TResult Function(List<Tweet> data, String? error) dataChanged,
    required TResult Function(Tweet tweet) addEditTweet,
    required TResult Function(Tweet tweet) deleteTweet,
  }) {
    return subscribe(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? subscribe,
    TResult? Function(List<Tweet> data, String? error)? dataChanged,
    TResult? Function(Tweet tweet)? addEditTweet,
    TResult? Function(Tweet tweet)? deleteTweet,
  }) {
    return subscribe?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? subscribe,
    TResult Function(List<Tweet> data, String? error)? dataChanged,
    TResult Function(Tweet tweet)? addEditTweet,
    TResult Function(Tweet tweet)? deleteTweet,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_AddTweet value) addEditTweet,
    required TResult Function(_DeleteTweet value) deleteTweet,
  }) {
    return subscribe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_AddTweet value)? addEditTweet,
    TResult? Function(_DeleteTweet value)? deleteTweet,
  }) {
    return subscribe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_AddTweet value)? addEditTweet,
    TResult Function(_DeleteTweet value)? deleteTweet,
    required TResult orElse(),
  }) {
    if (subscribe != null) {
      return subscribe(this);
    }
    return orElse();
  }
}

abstract class _Subscribe implements FirestoreEvent {
  const factory _Subscribe({required final String uid}) = _$_Subscribe;

  String get uid;
  @JsonKey(ignore: true)
  _$$_SubscribeCopyWith<_$_Subscribe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataChangedCopyWith<$Res> {
  factory _$$_DataChangedCopyWith(
          _$_DataChanged value, $Res Function(_$_DataChanged) then) =
      __$$_DataChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Tweet> data, String? error});
}

/// @nodoc
class __$$_DataChangedCopyWithImpl<$Res>
    extends _$FirestoreEventCopyWithImpl<$Res, _$_DataChanged>
    implements _$$_DataChangedCopyWith<$Res> {
  __$$_DataChangedCopyWithImpl(
      _$_DataChanged _value, $Res Function(_$_DataChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? error = freezed,
  }) {
    return _then(_$_DataChanged(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Tweet>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DataChanged implements _DataChanged {
  const _$_DataChanged({required final List<Tweet> data, required this.error})
      : _data = data;

  final List<Tweet> _data;
  @override
  List<Tweet> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'FirestoreEvent.dataChanged(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataChanged &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataChangedCopyWith<_$_DataChanged> get copyWith =>
      __$$_DataChangedCopyWithImpl<_$_DataChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) subscribe,
    required TResult Function(List<Tweet> data, String? error) dataChanged,
    required TResult Function(Tweet tweet) addEditTweet,
    required TResult Function(Tweet tweet) deleteTweet,
  }) {
    return dataChanged(data, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? subscribe,
    TResult? Function(List<Tweet> data, String? error)? dataChanged,
    TResult? Function(Tweet tweet)? addEditTweet,
    TResult? Function(Tweet tweet)? deleteTweet,
  }) {
    return dataChanged?.call(data, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? subscribe,
    TResult Function(List<Tweet> data, String? error)? dataChanged,
    TResult Function(Tweet tweet)? addEditTweet,
    TResult Function(Tweet tweet)? deleteTweet,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(data, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_AddTweet value) addEditTweet,
    required TResult Function(_DeleteTweet value) deleteTweet,
  }) {
    return dataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_AddTweet value)? addEditTweet,
    TResult? Function(_DeleteTweet value)? deleteTweet,
  }) {
    return dataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_AddTweet value)? addEditTweet,
    TResult Function(_DeleteTweet value)? deleteTweet,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(this);
    }
    return orElse();
  }
}

abstract class _DataChanged implements FirestoreEvent {
  const factory _DataChanged(
      {required final List<Tweet> data,
      required final String? error}) = _$_DataChanged;

  List<Tweet> get data;
  String? get error;
  @JsonKey(ignore: true)
  _$$_DataChangedCopyWith<_$_DataChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddTweetCopyWith<$Res> {
  factory _$$_AddTweetCopyWith(
          _$_AddTweet value, $Res Function(_$_AddTweet) then) =
      __$$_AddTweetCopyWithImpl<$Res>;
  @useResult
  $Res call({Tweet tweet});

  $TweetCopyWith<$Res> get tweet;
}

/// @nodoc
class __$$_AddTweetCopyWithImpl<$Res>
    extends _$FirestoreEventCopyWithImpl<$Res, _$_AddTweet>
    implements _$$_AddTweetCopyWith<$Res> {
  __$$_AddTweetCopyWithImpl(
      _$_AddTweet _value, $Res Function(_$_AddTweet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweet = null,
  }) {
    return _then(_$_AddTweet(
      tweet: null == tweet
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as Tweet,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TweetCopyWith<$Res> get tweet {
    return $TweetCopyWith<$Res>(_value.tweet, (value) {
      return _then(_value.copyWith(tweet: value));
    });
  }
}

/// @nodoc

class _$_AddTweet implements _AddTweet {
  const _$_AddTweet({required this.tweet});

  @override
  final Tweet tweet;

  @override
  String toString() {
    return 'FirestoreEvent.addEditTweet(tweet: $tweet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTweet &&
            (identical(other.tweet, tweet) || other.tweet == tweet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tweet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTweetCopyWith<_$_AddTweet> get copyWith =>
      __$$_AddTweetCopyWithImpl<_$_AddTweet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) subscribe,
    required TResult Function(List<Tweet> data, String? error) dataChanged,
    required TResult Function(Tweet tweet) addEditTweet,
    required TResult Function(Tweet tweet) deleteTweet,
  }) {
    return addEditTweet(tweet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? subscribe,
    TResult? Function(List<Tweet> data, String? error)? dataChanged,
    TResult? Function(Tweet tweet)? addEditTweet,
    TResult? Function(Tweet tweet)? deleteTweet,
  }) {
    return addEditTweet?.call(tweet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? subscribe,
    TResult Function(List<Tweet> data, String? error)? dataChanged,
    TResult Function(Tweet tweet)? addEditTweet,
    TResult Function(Tweet tweet)? deleteTweet,
    required TResult orElse(),
  }) {
    if (addEditTweet != null) {
      return addEditTweet(tweet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_AddTweet value) addEditTweet,
    required TResult Function(_DeleteTweet value) deleteTweet,
  }) {
    return addEditTweet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_AddTweet value)? addEditTweet,
    TResult? Function(_DeleteTweet value)? deleteTweet,
  }) {
    return addEditTweet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_AddTweet value)? addEditTweet,
    TResult Function(_DeleteTweet value)? deleteTweet,
    required TResult orElse(),
  }) {
    if (addEditTweet != null) {
      return addEditTweet(this);
    }
    return orElse();
  }
}

abstract class _AddTweet implements FirestoreEvent {
  const factory _AddTweet({required final Tweet tweet}) = _$_AddTweet;

  Tweet get tweet;
  @JsonKey(ignore: true)
  _$$_AddTweetCopyWith<_$_AddTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteTweetCopyWith<$Res> {
  factory _$$_DeleteTweetCopyWith(
          _$_DeleteTweet value, $Res Function(_$_DeleteTweet) then) =
      __$$_DeleteTweetCopyWithImpl<$Res>;
  @useResult
  $Res call({Tweet tweet});

  $TweetCopyWith<$Res> get tweet;
}

/// @nodoc
class __$$_DeleteTweetCopyWithImpl<$Res>
    extends _$FirestoreEventCopyWithImpl<$Res, _$_DeleteTweet>
    implements _$$_DeleteTweetCopyWith<$Res> {
  __$$_DeleteTweetCopyWithImpl(
      _$_DeleteTweet _value, $Res Function(_$_DeleteTweet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweet = null,
  }) {
    return _then(_$_DeleteTweet(
      tweet: null == tweet
          ? _value.tweet
          : tweet // ignore: cast_nullable_to_non_nullable
              as Tweet,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TweetCopyWith<$Res> get tweet {
    return $TweetCopyWith<$Res>(_value.tweet, (value) {
      return _then(_value.copyWith(tweet: value));
    });
  }
}

/// @nodoc

class _$_DeleteTweet implements _DeleteTweet {
  const _$_DeleteTweet({required this.tweet});

  @override
  final Tweet tweet;

  @override
  String toString() {
    return 'FirestoreEvent.deleteTweet(tweet: $tweet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteTweet &&
            (identical(other.tweet, tweet) || other.tweet == tweet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tweet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteTweetCopyWith<_$_DeleteTweet> get copyWith =>
      __$$_DeleteTweetCopyWithImpl<_$_DeleteTweet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String uid) subscribe,
    required TResult Function(List<Tweet> data, String? error) dataChanged,
    required TResult Function(Tweet tweet) addEditTweet,
    required TResult Function(Tweet tweet) deleteTweet,
  }) {
    return deleteTweet(tweet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String uid)? subscribe,
    TResult? Function(List<Tweet> data, String? error)? dataChanged,
    TResult? Function(Tweet tweet)? addEditTweet,
    TResult? Function(Tweet tweet)? deleteTweet,
  }) {
    return deleteTweet?.call(tweet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String uid)? subscribe,
    TResult Function(List<Tweet> data, String? error)? dataChanged,
    TResult Function(Tweet tweet)? addEditTweet,
    TResult Function(Tweet tweet)? deleteTweet,
    required TResult orElse(),
  }) {
    if (deleteTweet != null) {
      return deleteTweet(tweet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Subscribe value) subscribe,
    required TResult Function(_DataChanged value) dataChanged,
    required TResult Function(_AddTweet value) addEditTweet,
    required TResult Function(_DeleteTweet value) deleteTweet,
  }) {
    return deleteTweet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Subscribe value)? subscribe,
    TResult? Function(_DataChanged value)? dataChanged,
    TResult? Function(_AddTweet value)? addEditTweet,
    TResult? Function(_DeleteTweet value)? deleteTweet,
  }) {
    return deleteTweet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Subscribe value)? subscribe,
    TResult Function(_DataChanged value)? dataChanged,
    TResult Function(_AddTweet value)? addEditTweet,
    TResult Function(_DeleteTweet value)? deleteTweet,
    required TResult orElse(),
  }) {
    if (deleteTweet != null) {
      return deleteTweet(this);
    }
    return orElse();
  }
}

abstract class _DeleteTweet implements FirestoreEvent {
  const factory _DeleteTweet({required final Tweet tweet}) = _$_DeleteTweet;

  Tweet get tweet;
  @JsonKey(ignore: true)
  _$$_DeleteTweetCopyWith<_$_DeleteTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FirestoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<Tweet> data) successState,
    required TResult Function(String error) failedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<Tweet> data)? successState,
    TResult? Function(String error)? failedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Tweet> data)? successState,
    TResult Function(String error)? failedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SuccessState value) successState,
    required TResult Function(_FailedState value) failedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_SuccessState value)? successState,
    TResult? Function(_FailedState value)? failedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SuccessState value)? successState,
    TResult Function(_FailedState value)? failedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreStateCopyWith<$Res> {
  factory $FirestoreStateCopyWith(
          FirestoreState value, $Res Function(FirestoreState) then) =
      _$FirestoreStateCopyWithImpl<$Res, FirestoreState>;
}

/// @nodoc
class _$FirestoreStateCopyWithImpl<$Res, $Val extends FirestoreState>
    implements $FirestoreStateCopyWith<$Res> {
  _$FirestoreStateCopyWithImpl(this._value, this._then);

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
    extends _$FirestoreStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'FirestoreState.initialState()';
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
    required TResult Function(List<Tweet> data) successState,
    required TResult Function(String error) failedState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<Tweet> data)? successState,
    TResult? Function(String error)? failedState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Tweet> data)? successState,
    TResult Function(String error)? failedState,
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
    required TResult Function(_SuccessState value) successState,
    required TResult Function(_FailedState value) failedState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_SuccessState value)? successState,
    TResult? Function(_FailedState value)? failedState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SuccessState value)? successState,
    TResult Function(_FailedState value)? failedState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements FirestoreState {
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
    extends _$FirestoreStateCopyWithImpl<$Res, _$_LoadingState>
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
    return 'FirestoreState.loadingState()';
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
    required TResult Function(List<Tweet> data) successState,
    required TResult Function(String error) failedState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<Tweet> data)? successState,
    TResult? Function(String error)? failedState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Tweet> data)? successState,
    TResult Function(String error)? failedState,
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
    required TResult Function(_SuccessState value) successState,
    required TResult Function(_FailedState value) failedState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_SuccessState value)? successState,
    TResult? Function(_FailedState value)? failedState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SuccessState value)? successState,
    TResult Function(_FailedState value)? failedState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements FirestoreState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Tweet> data});
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$FirestoreStateCopyWithImpl<$Res, _$_SuccessState>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SuccessState(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Tweet>,
    ));
  }
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState({required final List<Tweet> data}) : _data = data;

  final List<Tweet> _data;
  @override
  List<Tweet> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FirestoreState.successState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessState &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      __$$_SuccessStateCopyWithImpl<_$_SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<Tweet> data) successState,
    required TResult Function(String error) failedState,
  }) {
    return successState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<Tweet> data)? successState,
    TResult? Function(String error)? failedState,
  }) {
    return successState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Tweet> data)? successState,
    TResult Function(String error)? failedState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SuccessState value) successState,
    required TResult Function(_FailedState value) failedState,
  }) {
    return successState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_SuccessState value)? successState,
    TResult? Function(_FailedState value)? failedState,
  }) {
    return successState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SuccessState value)? successState,
    TResult Function(_FailedState value)? failedState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements FirestoreState {
  const factory _SuccessState({required final List<Tweet> data}) =
      _$_SuccessState;

  List<Tweet> get data;
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedStateCopyWith<$Res> {
  factory _$$_FailedStateCopyWith(
          _$_FailedState value, $Res Function(_$_FailedState) then) =
      __$$_FailedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_FailedStateCopyWithImpl<$Res>
    extends _$FirestoreStateCopyWithImpl<$Res, _$_FailedState>
    implements _$$_FailedStateCopyWith<$Res> {
  __$$_FailedStateCopyWithImpl(
      _$_FailedState _value, $Res Function(_$_FailedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_FailedState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FailedState implements _FailedState {
  const _$_FailedState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FirestoreState.failedState(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailedState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedStateCopyWith<_$_FailedState> get copyWith =>
      __$$_FailedStateCopyWithImpl<_$_FailedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(List<Tweet> data) successState,
    required TResult Function(String error) failedState,
  }) {
    return failedState(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(List<Tweet> data)? successState,
    TResult? Function(String error)? failedState,
  }) {
    return failedState?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(List<Tweet> data)? successState,
    TResult Function(String error)? failedState,
    required TResult orElse(),
  }) {
    if (failedState != null) {
      return failedState(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initialState,
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(_SuccessState value) successState,
    required TResult Function(_FailedState value) failedState,
  }) {
    return failedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initialState,
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(_SuccessState value)? successState,
    TResult? Function(_FailedState value)? failedState,
  }) {
    return failedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initialState,
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(_SuccessState value)? successState,
    TResult Function(_FailedState value)? failedState,
    required TResult orElse(),
  }) {
    if (failedState != null) {
      return failedState(this);
    }
    return orElse();
  }
}

abstract class _FailedState implements FirestoreState {
  const factory _FailedState({required final String error}) = _$_FailedState;

  String get error;
  @JsonKey(ignore: true)
  _$$_FailedStateCopyWith<_$_FailedState> get copyWith =>
      throw _privateConstructorUsedError;
}
