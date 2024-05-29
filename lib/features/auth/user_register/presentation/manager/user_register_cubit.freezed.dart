// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserRegisterStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserRegisterEntity register) success,
    required TResult Function(Failure failure) error,
    required TResult Function(CheckPhoneEntity checkPhone) checkSuccess,
    required TResult Function(Failure failure) checkFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterEntity register)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult? Function(Failure failure)? checkFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterEntity register)? success,
    TResult Function(Failure failure)? error,
    TResult Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult Function(Failure failure)? checkFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CheckSuccess value) checkSuccess,
    required TResult Function(CheckFailed value) checkFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CheckSuccess value)? checkSuccess,
    TResult? Function(CheckFailed value)? checkFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CheckSuccess value)? checkSuccess,
    TResult Function(CheckFailed value)? checkFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterStatesCopyWith<$Res> {
  factory $UserRegisterStatesCopyWith(
          UserRegisterStates value, $Res Function(UserRegisterStates) then) =
      _$UserRegisterStatesCopyWithImpl<$Res, UserRegisterStates>;
}

/// @nodoc
class _$UserRegisterStatesCopyWithImpl<$Res, $Val extends UserRegisterStates>
    implements $UserRegisterStatesCopyWith<$Res> {
  _$UserRegisterStatesCopyWithImpl(this._value, this._then);

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
    extends _$UserRegisterStatesCopyWithImpl<$Res, _$InitialImpl>
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
    return 'UserRegisterStates.initial()';
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
    required TResult Function(UserRegisterEntity register) success,
    required TResult Function(Failure failure) error,
    required TResult Function(CheckPhoneEntity checkPhone) checkSuccess,
    required TResult Function(Failure failure) checkFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterEntity register)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult? Function(Failure failure)? checkFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterEntity register)? success,
    TResult Function(Failure failure)? error,
    TResult Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult Function(Failure failure)? checkFailed,
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
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CheckSuccess value) checkSuccess,
    required TResult Function(CheckFailed value) checkFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CheckSuccess value)? checkSuccess,
    TResult? Function(CheckFailed value)? checkFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CheckSuccess value)? checkSuccess,
    TResult Function(CheckFailed value)? checkFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserRegisterStates {
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
    extends _$UserRegisterStatesCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'UserRegisterStates.loading()';
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
    required TResult Function(UserRegisterEntity register) success,
    required TResult Function(Failure failure) error,
    required TResult Function(CheckPhoneEntity checkPhone) checkSuccess,
    required TResult Function(Failure failure) checkFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterEntity register)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult? Function(Failure failure)? checkFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterEntity register)? success,
    TResult Function(Failure failure)? error,
    TResult Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult Function(Failure failure)? checkFailed,
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
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CheckSuccess value) checkSuccess,
    required TResult Function(CheckFailed value) checkFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CheckSuccess value)? checkSuccess,
    TResult? Function(CheckFailed value)? checkFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CheckSuccess value)? checkSuccess,
    TResult Function(CheckFailed value)? checkFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements UserRegisterStates {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserRegisterEntity register});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$UserRegisterStatesCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? register = null,
  }) {
    return _then(_$SuccessImpl(
      null == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as UserRegisterEntity,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl(this.register);

  @override
  final UserRegisterEntity register;

  @override
  String toString() {
    return 'UserRegisterStates.success(register: $register)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.register, register) ||
                other.register == register));
  }

  @override
  int get hashCode => Object.hash(runtimeType, register);

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
    required TResult Function(UserRegisterEntity register) success,
    required TResult Function(Failure failure) error,
    required TResult Function(CheckPhoneEntity checkPhone) checkSuccess,
    required TResult Function(Failure failure) checkFailed,
  }) {
    return success(register);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterEntity register)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult? Function(Failure failure)? checkFailed,
  }) {
    return success?.call(register);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterEntity register)? success,
    TResult Function(Failure failure)? error,
    TResult Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult Function(Failure failure)? checkFailed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(register);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CheckSuccess value) checkSuccess,
    required TResult Function(CheckFailed value) checkFailed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CheckSuccess value)? checkSuccess,
    TResult? Function(CheckFailed value)? checkFailed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CheckSuccess value)? checkSuccess,
    TResult Function(CheckFailed value)? checkFailed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements UserRegisterStates {
  const factory Success(final UserRegisterEntity register) = _$SuccessImpl;

  UserRegisterEntity get register;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UserRegisterStatesCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UserRegisterStates.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserRegisterEntity register) success,
    required TResult Function(Failure failure) error,
    required TResult Function(CheckPhoneEntity checkPhone) checkSuccess,
    required TResult Function(Failure failure) checkFailed,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterEntity register)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult? Function(Failure failure)? checkFailed,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterEntity register)? success,
    TResult Function(Failure failure)? error,
    TResult Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult Function(Failure failure)? checkFailed,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CheckSuccess value) checkSuccess,
    required TResult Function(CheckFailed value) checkFailed,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CheckSuccess value)? checkSuccess,
    TResult? Function(CheckFailed value)? checkFailed,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CheckSuccess value)? checkSuccess,
    TResult Function(CheckFailed value)? checkFailed,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements UserRegisterStates {
  const factory Error(final Failure failure) = _$ErrorImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckSuccessImplCopyWith<$Res> {
  factory _$$CheckSuccessImplCopyWith(
          _$CheckSuccessImpl value, $Res Function(_$CheckSuccessImpl) then) =
      __$$CheckSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckPhoneEntity checkPhone});
}

/// @nodoc
class __$$CheckSuccessImplCopyWithImpl<$Res>
    extends _$UserRegisterStatesCopyWithImpl<$Res, _$CheckSuccessImpl>
    implements _$$CheckSuccessImplCopyWith<$Res> {
  __$$CheckSuccessImplCopyWithImpl(
      _$CheckSuccessImpl _value, $Res Function(_$CheckSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkPhone = null,
  }) {
    return _then(_$CheckSuccessImpl(
      null == checkPhone
          ? _value.checkPhone
          : checkPhone // ignore: cast_nullable_to_non_nullable
              as CheckPhoneEntity,
    ));
  }
}

/// @nodoc

class _$CheckSuccessImpl implements CheckSuccess {
  const _$CheckSuccessImpl(this.checkPhone);

  @override
  final CheckPhoneEntity checkPhone;

  @override
  String toString() {
    return 'UserRegisterStates.checkSuccess(checkPhone: $checkPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckSuccessImpl &&
            (identical(other.checkPhone, checkPhone) ||
                other.checkPhone == checkPhone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckSuccessImplCopyWith<_$CheckSuccessImpl> get copyWith =>
      __$$CheckSuccessImplCopyWithImpl<_$CheckSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserRegisterEntity register) success,
    required TResult Function(Failure failure) error,
    required TResult Function(CheckPhoneEntity checkPhone) checkSuccess,
    required TResult Function(Failure failure) checkFailed,
  }) {
    return checkSuccess(checkPhone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterEntity register)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult? Function(Failure failure)? checkFailed,
  }) {
    return checkSuccess?.call(checkPhone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterEntity register)? success,
    TResult Function(Failure failure)? error,
    TResult Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult Function(Failure failure)? checkFailed,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess(checkPhone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CheckSuccess value) checkSuccess,
    required TResult Function(CheckFailed value) checkFailed,
  }) {
    return checkSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CheckSuccess value)? checkSuccess,
    TResult? Function(CheckFailed value)? checkFailed,
  }) {
    return checkSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CheckSuccess value)? checkSuccess,
    TResult Function(CheckFailed value)? checkFailed,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess(this);
    }
    return orElse();
  }
}

abstract class CheckSuccess implements UserRegisterStates {
  const factory CheckSuccess(final CheckPhoneEntity checkPhone) =
      _$CheckSuccessImpl;

  CheckPhoneEntity get checkPhone;
  @JsonKey(ignore: true)
  _$$CheckSuccessImplCopyWith<_$CheckSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckFailedImplCopyWith<$Res> {
  factory _$$CheckFailedImplCopyWith(
          _$CheckFailedImpl value, $Res Function(_$CheckFailedImpl) then) =
      __$$CheckFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$CheckFailedImplCopyWithImpl<$Res>
    extends _$UserRegisterStatesCopyWithImpl<$Res, _$CheckFailedImpl>
    implements _$$CheckFailedImplCopyWith<$Res> {
  __$$CheckFailedImplCopyWithImpl(
      _$CheckFailedImpl _value, $Res Function(_$CheckFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CheckFailedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$CheckFailedImpl implements CheckFailed {
  const _$CheckFailedImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UserRegisterStates.checkFailed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckFailedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckFailedImplCopyWith<_$CheckFailedImpl> get copyWith =>
      __$$CheckFailedImplCopyWithImpl<_$CheckFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserRegisterEntity register) success,
    required TResult Function(Failure failure) error,
    required TResult Function(CheckPhoneEntity checkPhone) checkSuccess,
    required TResult Function(Failure failure) checkFailed,
  }) {
    return checkFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserRegisterEntity register)? success,
    TResult? Function(Failure failure)? error,
    TResult? Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult? Function(Failure failure)? checkFailed,
  }) {
    return checkFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserRegisterEntity register)? success,
    TResult Function(Failure failure)? error,
    TResult Function(CheckPhoneEntity checkPhone)? checkSuccess,
    TResult Function(Failure failure)? checkFailed,
    required TResult orElse(),
  }) {
    if (checkFailed != null) {
      return checkFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
    required TResult Function(CheckSuccess value) checkSuccess,
    required TResult Function(CheckFailed value) checkFailed,
  }) {
    return checkFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(Error value)? error,
    TResult? Function(CheckSuccess value)? checkSuccess,
    TResult? Function(CheckFailed value)? checkFailed,
  }) {
    return checkFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    TResult Function(CheckSuccess value)? checkSuccess,
    TResult Function(CheckFailed value)? checkFailed,
    required TResult orElse(),
  }) {
    if (checkFailed != null) {
      return checkFailed(this);
    }
    return orElse();
  }
}

abstract class CheckFailed implements UserRegisterStates {
  const factory CheckFailed(final Failure failure) = _$CheckFailedImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$CheckFailedImplCopyWith<_$CheckFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
