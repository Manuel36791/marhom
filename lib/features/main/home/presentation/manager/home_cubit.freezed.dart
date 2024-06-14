// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PrayerTimes prayerTimes) prayerSuccess,
    required TResult Function(SlidersResponseEntity sliders) slidersSuccess,
    required TResult Function(Failure failure) slidersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult? Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult? Function(Failure failure)? slidersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult Function(Failure failure)? slidersError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) prayerSuccess,
    required TResult Function(SlidersSuccess value) slidersSuccess,
    required TResult Function(SlidersError value) slidersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? prayerSuccess,
    TResult? Function(SlidersSuccess value)? slidersSuccess,
    TResult? Function(SlidersError value)? slidersError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? prayerSuccess,
    TResult Function(SlidersSuccess value)? slidersSuccess,
    TResult Function(SlidersError value)? slidersError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStatesCopyWith<$Res> {
  factory $HomeStatesCopyWith(
          HomeStates value, $Res Function(HomeStates) then) =
      _$HomeStatesCopyWithImpl<$Res, HomeStates>;
}

/// @nodoc
class _$HomeStatesCopyWithImpl<$Res, $Val extends HomeStates>
    implements $HomeStatesCopyWith<$Res> {
  _$HomeStatesCopyWithImpl(this._value, this._then);

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
    extends _$HomeStatesCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HomeStates.initial()';
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
    required TResult Function(PrayerTimes prayerTimes) prayerSuccess,
    required TResult Function(SlidersResponseEntity sliders) slidersSuccess,
    required TResult Function(Failure failure) slidersError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult? Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult? Function(Failure failure)? slidersError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult Function(Failure failure)? slidersError,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) prayerSuccess,
    required TResult Function(SlidersSuccess value) slidersSuccess,
    required TResult Function(SlidersError value) slidersError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? prayerSuccess,
    TResult? Function(SlidersSuccess value)? slidersSuccess,
    TResult? Function(SlidersError value)? slidersError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? prayerSuccess,
    TResult Function(SlidersSuccess value)? slidersSuccess,
    TResult Function(SlidersError value)? slidersError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeStates {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeStates.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PrayerTimes prayerTimes) prayerSuccess,
    required TResult Function(SlidersResponseEntity sliders) slidersSuccess,
    required TResult Function(Failure failure) slidersError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult? Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult? Function(Failure failure)? slidersError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult Function(Failure failure)? slidersError,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) prayerSuccess,
    required TResult Function(SlidersSuccess value) slidersSuccess,
    required TResult Function(SlidersError value) slidersError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? prayerSuccess,
    TResult? Function(SlidersSuccess value)? slidersSuccess,
    TResult? Function(SlidersError value)? slidersError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? prayerSuccess,
    TResult Function(SlidersSuccess value)? slidersSuccess,
    TResult Function(SlidersError value)? slidersError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements HomeStates {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PrayerTimes prayerTimes});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prayerTimes = null,
  }) {
    return _then(_$SuccessImpl(
      null == prayerTimes
          ? _value.prayerTimes
          : prayerTimes // ignore: cast_nullable_to_non_nullable
              as PrayerTimes,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.prayerTimes);

  @override
  final PrayerTimes prayerTimes;

  @override
  String toString() {
    return 'HomeStates.prayerSuccess(prayerTimes: $prayerTimes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.prayerTimes, prayerTimes) ||
                other.prayerTimes == prayerTimes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prayerTimes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PrayerTimes prayerTimes) prayerSuccess,
    required TResult Function(SlidersResponseEntity sliders) slidersSuccess,
    required TResult Function(Failure failure) slidersError,
  }) {
    return prayerSuccess(prayerTimes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult? Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult? Function(Failure failure)? slidersError,
  }) {
    return prayerSuccess?.call(prayerTimes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult Function(Failure failure)? slidersError,
    required TResult orElse(),
  }) {
    if (prayerSuccess != null) {
      return prayerSuccess(prayerTimes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) prayerSuccess,
    required TResult Function(SlidersSuccess value) slidersSuccess,
    required TResult Function(SlidersError value) slidersError,
  }) {
    return prayerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? prayerSuccess,
    TResult? Function(SlidersSuccess value)? slidersSuccess,
    TResult? Function(SlidersError value)? slidersError,
  }) {
    return prayerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? prayerSuccess,
    TResult Function(SlidersSuccess value)? slidersSuccess,
    TResult Function(SlidersError value)? slidersError,
    required TResult orElse(),
  }) {
    if (prayerSuccess != null) {
      return prayerSuccess(this);
    }
    return orElse();
  }
}

abstract class Success implements HomeStates {
  const factory Success(final PrayerTimes prayerTimes) = _$SuccessImpl;

  PrayerTimes get prayerTimes;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SlidersSuccessImplCopyWith<$Res> {
  factory _$$SlidersSuccessImplCopyWith(_$SlidersSuccessImpl value,
          $Res Function(_$SlidersSuccessImpl) then) =
      __$$SlidersSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SlidersResponseEntity sliders});
}

/// @nodoc
class __$$SlidersSuccessImplCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$SlidersSuccessImpl>
    implements _$$SlidersSuccessImplCopyWith<$Res> {
  __$$SlidersSuccessImplCopyWithImpl(
      _$SlidersSuccessImpl _value, $Res Function(_$SlidersSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliders = null,
  }) {
    return _then(_$SlidersSuccessImpl(
      null == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as SlidersResponseEntity,
    ));
  }
}

/// @nodoc

class _$SlidersSuccessImpl implements SlidersSuccess {
  const _$SlidersSuccessImpl(this.sliders);

  @override
  final SlidersResponseEntity sliders;

  @override
  String toString() {
    return 'HomeStates.slidersSuccess(sliders: $sliders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlidersSuccessImpl &&
            (identical(other.sliders, sliders) || other.sliders == sliders));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sliders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlidersSuccessImplCopyWith<_$SlidersSuccessImpl> get copyWith =>
      __$$SlidersSuccessImplCopyWithImpl<_$SlidersSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PrayerTimes prayerTimes) prayerSuccess,
    required TResult Function(SlidersResponseEntity sliders) slidersSuccess,
    required TResult Function(Failure failure) slidersError,
  }) {
    return slidersSuccess(sliders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult? Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult? Function(Failure failure)? slidersError,
  }) {
    return slidersSuccess?.call(sliders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult Function(Failure failure)? slidersError,
    required TResult orElse(),
  }) {
    if (slidersSuccess != null) {
      return slidersSuccess(sliders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) prayerSuccess,
    required TResult Function(SlidersSuccess value) slidersSuccess,
    required TResult Function(SlidersError value) slidersError,
  }) {
    return slidersSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? prayerSuccess,
    TResult? Function(SlidersSuccess value)? slidersSuccess,
    TResult? Function(SlidersError value)? slidersError,
  }) {
    return slidersSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? prayerSuccess,
    TResult Function(SlidersSuccess value)? slidersSuccess,
    TResult Function(SlidersError value)? slidersError,
    required TResult orElse(),
  }) {
    if (slidersSuccess != null) {
      return slidersSuccess(this);
    }
    return orElse();
  }
}

abstract class SlidersSuccess implements HomeStates {
  const factory SlidersSuccess(final SlidersResponseEntity sliders) =
      _$SlidersSuccessImpl;

  SlidersResponseEntity get sliders;
  @JsonKey(ignore: true)
  _$$SlidersSuccessImplCopyWith<_$SlidersSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SlidersErrorImplCopyWith<$Res> {
  factory _$$SlidersErrorImplCopyWith(
          _$SlidersErrorImpl value, $Res Function(_$SlidersErrorImpl) then) =
      __$$SlidersErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$SlidersErrorImplCopyWithImpl<$Res>
    extends _$HomeStatesCopyWithImpl<$Res, _$SlidersErrorImpl>
    implements _$$SlidersErrorImplCopyWith<$Res> {
  __$$SlidersErrorImplCopyWithImpl(
      _$SlidersErrorImpl _value, $Res Function(_$SlidersErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SlidersErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$SlidersErrorImpl implements SlidersError {
  const _$SlidersErrorImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'HomeStates.slidersError(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlidersErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SlidersErrorImplCopyWith<_$SlidersErrorImpl> get copyWith =>
      __$$SlidersErrorImplCopyWithImpl<_$SlidersErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(PrayerTimes prayerTimes) prayerSuccess,
    required TResult Function(SlidersResponseEntity sliders) slidersSuccess,
    required TResult Function(Failure failure) slidersError,
  }) {
    return slidersError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult? Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult? Function(Failure failure)? slidersError,
  }) {
    return slidersError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(PrayerTimes prayerTimes)? prayerSuccess,
    TResult Function(SlidersResponseEntity sliders)? slidersSuccess,
    TResult Function(Failure failure)? slidersError,
    required TResult orElse(),
  }) {
    if (slidersError != null) {
      return slidersError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) prayerSuccess,
    required TResult Function(SlidersSuccess value) slidersSuccess,
    required TResult Function(SlidersError value) slidersError,
  }) {
    return slidersError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? prayerSuccess,
    TResult? Function(SlidersSuccess value)? slidersSuccess,
    TResult? Function(SlidersError value)? slidersError,
  }) {
    return slidersError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? prayerSuccess,
    TResult Function(SlidersSuccess value)? slidersSuccess,
    TResult Function(SlidersError value)? slidersError,
    required TResult orElse(),
  }) {
    if (slidersError != null) {
      return slidersError(this);
    }
    return orElse();
  }
}

abstract class SlidersError implements HomeStates {
  const factory SlidersError(final Failure failure) = _$SlidersErrorImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$SlidersErrorImplCopyWith<_$SlidersErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
