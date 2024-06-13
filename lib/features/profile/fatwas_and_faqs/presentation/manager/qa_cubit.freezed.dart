// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qa_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QaStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(QADataEntity faqs) faqsSuccess,
    required TResult Function(QADataEntity fatwas) fatwasSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(QADataEntity faqs)? faqsSuccess,
    TResult? Function(QADataEntity fatwas)? fatwasSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(QADataEntity faqs)? faqsSuccess,
    TResult Function(QADataEntity fatwas)? fatwasSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FaqsError value) error,
    required TResult Function(FaqsSuccess value) faqsSuccess,
    required TResult Function(FatwasSuccess value) fatwasSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FaqsError value)? error,
    TResult? Function(FaqsSuccess value)? faqsSuccess,
    TResult? Function(FatwasSuccess value)? fatwasSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FaqsError value)? error,
    TResult Function(FaqsSuccess value)? faqsSuccess,
    TResult Function(FatwasSuccess value)? fatwasSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QaStatesCopyWith<$Res> {
  factory $QaStatesCopyWith(QaStates value, $Res Function(QaStates) then) =
      _$QaStatesCopyWithImpl<$Res, QaStates>;
}

/// @nodoc
class _$QaStatesCopyWithImpl<$Res, $Val extends QaStates>
    implements $QaStatesCopyWith<$Res> {
  _$QaStatesCopyWithImpl(this._value, this._then);

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
    extends _$QaStatesCopyWithImpl<$Res, _$InitialImpl>
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
    return 'QaStates.initial()';
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
    required TResult Function(Failure failure) error,
    required TResult Function(QADataEntity faqs) faqsSuccess,
    required TResult Function(QADataEntity fatwas) fatwasSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(QADataEntity faqs)? faqsSuccess,
    TResult? Function(QADataEntity fatwas)? fatwasSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(QADataEntity faqs)? faqsSuccess,
    TResult Function(QADataEntity fatwas)? fatwasSuccess,
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
    required TResult Function(FaqsError value) error,
    required TResult Function(FaqsSuccess value) faqsSuccess,
    required TResult Function(FatwasSuccess value) fatwasSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FaqsError value)? error,
    TResult? Function(FaqsSuccess value)? faqsSuccess,
    TResult? Function(FatwasSuccess value)? fatwasSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FaqsError value)? error,
    TResult Function(FaqsSuccess value)? faqsSuccess,
    TResult Function(FatwasSuccess value)? fatwasSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QaStates {
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
    extends _$QaStatesCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'QaStates.loading()';
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
    required TResult Function(Failure failure) error,
    required TResult Function(QADataEntity faqs) faqsSuccess,
    required TResult Function(QADataEntity fatwas) fatwasSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(QADataEntity faqs)? faqsSuccess,
    TResult? Function(QADataEntity fatwas)? fatwasSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(QADataEntity faqs)? faqsSuccess,
    TResult Function(QADataEntity fatwas)? fatwasSuccess,
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
    required TResult Function(FaqsError value) error,
    required TResult Function(FaqsSuccess value) faqsSuccess,
    required TResult Function(FatwasSuccess value) fatwasSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FaqsError value)? error,
    TResult? Function(FaqsSuccess value)? faqsSuccess,
    TResult? Function(FatwasSuccess value)? fatwasSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FaqsError value)? error,
    TResult Function(FaqsSuccess value)? faqsSuccess,
    TResult Function(FatwasSuccess value)? fatwasSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements QaStates {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FaqsErrorImplCopyWith<$Res> {
  factory _$$FaqsErrorImplCopyWith(
          _$FaqsErrorImpl value, $Res Function(_$FaqsErrorImpl) then) =
      __$$FaqsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$FaqsErrorImplCopyWithImpl<$Res>
    extends _$QaStatesCopyWithImpl<$Res, _$FaqsErrorImpl>
    implements _$$FaqsErrorImplCopyWith<$Res> {
  __$$FaqsErrorImplCopyWithImpl(
      _$FaqsErrorImpl _value, $Res Function(_$FaqsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FaqsErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$FaqsErrorImpl implements FaqsError {
  const _$FaqsErrorImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'QaStates.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqsErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqsErrorImplCopyWith<_$FaqsErrorImpl> get copyWith =>
      __$$FaqsErrorImplCopyWithImpl<_$FaqsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(QADataEntity faqs) faqsSuccess,
    required TResult Function(QADataEntity fatwas) fatwasSuccess,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(QADataEntity faqs)? faqsSuccess,
    TResult? Function(QADataEntity fatwas)? fatwasSuccess,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(QADataEntity faqs)? faqsSuccess,
    TResult Function(QADataEntity fatwas)? fatwasSuccess,
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
    required TResult Function(FaqsError value) error,
    required TResult Function(FaqsSuccess value) faqsSuccess,
    required TResult Function(FatwasSuccess value) fatwasSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FaqsError value)? error,
    TResult? Function(FaqsSuccess value)? faqsSuccess,
    TResult? Function(FatwasSuccess value)? fatwasSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FaqsError value)? error,
    TResult Function(FaqsSuccess value)? faqsSuccess,
    TResult Function(FatwasSuccess value)? fatwasSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FaqsError implements QaStates {
  const factory FaqsError(final Failure failure) = _$FaqsErrorImpl;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FaqsErrorImplCopyWith<_$FaqsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaqsSuccessImplCopyWith<$Res> {
  factory _$$FaqsSuccessImplCopyWith(
          _$FaqsSuccessImpl value, $Res Function(_$FaqsSuccessImpl) then) =
      __$$FaqsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QADataEntity faqs});
}

/// @nodoc
class __$$FaqsSuccessImplCopyWithImpl<$Res>
    extends _$QaStatesCopyWithImpl<$Res, _$FaqsSuccessImpl>
    implements _$$FaqsSuccessImplCopyWith<$Res> {
  __$$FaqsSuccessImplCopyWithImpl(
      _$FaqsSuccessImpl _value, $Res Function(_$FaqsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? faqs = null,
  }) {
    return _then(_$FaqsSuccessImpl(
      null == faqs
          ? _value.faqs
          : faqs // ignore: cast_nullable_to_non_nullable
              as QADataEntity,
    ));
  }
}

/// @nodoc

class _$FaqsSuccessImpl implements FaqsSuccess {
  const _$FaqsSuccessImpl(this.faqs);

  @override
  final QADataEntity faqs;

  @override
  String toString() {
    return 'QaStates.faqsSuccess(faqs: $faqs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqsSuccessImpl &&
            (identical(other.faqs, faqs) || other.faqs == faqs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, faqs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqsSuccessImplCopyWith<_$FaqsSuccessImpl> get copyWith =>
      __$$FaqsSuccessImplCopyWithImpl<_$FaqsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(QADataEntity faqs) faqsSuccess,
    required TResult Function(QADataEntity fatwas) fatwasSuccess,
  }) {
    return faqsSuccess(faqs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(QADataEntity faqs)? faqsSuccess,
    TResult? Function(QADataEntity fatwas)? fatwasSuccess,
  }) {
    return faqsSuccess?.call(faqs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(QADataEntity faqs)? faqsSuccess,
    TResult Function(QADataEntity fatwas)? fatwasSuccess,
    required TResult orElse(),
  }) {
    if (faqsSuccess != null) {
      return faqsSuccess(faqs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FaqsError value) error,
    required TResult Function(FaqsSuccess value) faqsSuccess,
    required TResult Function(FatwasSuccess value) fatwasSuccess,
  }) {
    return faqsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FaqsError value)? error,
    TResult? Function(FaqsSuccess value)? faqsSuccess,
    TResult? Function(FatwasSuccess value)? fatwasSuccess,
  }) {
    return faqsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FaqsError value)? error,
    TResult Function(FaqsSuccess value)? faqsSuccess,
    TResult Function(FatwasSuccess value)? fatwasSuccess,
    required TResult orElse(),
  }) {
    if (faqsSuccess != null) {
      return faqsSuccess(this);
    }
    return orElse();
  }
}

abstract class FaqsSuccess implements QaStates {
  const factory FaqsSuccess(final QADataEntity faqs) = _$FaqsSuccessImpl;

  QADataEntity get faqs;
  @JsonKey(ignore: true)
  _$$FaqsSuccessImplCopyWith<_$FaqsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FatwasSuccessImplCopyWith<$Res> {
  factory _$$FatwasSuccessImplCopyWith(
          _$FatwasSuccessImpl value, $Res Function(_$FatwasSuccessImpl) then) =
      __$$FatwasSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QADataEntity fatwas});
}

/// @nodoc
class __$$FatwasSuccessImplCopyWithImpl<$Res>
    extends _$QaStatesCopyWithImpl<$Res, _$FatwasSuccessImpl>
    implements _$$FatwasSuccessImplCopyWith<$Res> {
  __$$FatwasSuccessImplCopyWithImpl(
      _$FatwasSuccessImpl _value, $Res Function(_$FatwasSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fatwas = null,
  }) {
    return _then(_$FatwasSuccessImpl(
      null == fatwas
          ? _value.fatwas
          : fatwas // ignore: cast_nullable_to_non_nullable
              as QADataEntity,
    ));
  }
}

/// @nodoc

class _$FatwasSuccessImpl implements FatwasSuccess {
  const _$FatwasSuccessImpl(this.fatwas);

  @override
  final QADataEntity fatwas;

  @override
  String toString() {
    return 'QaStates.fatwasSuccess(fatwas: $fatwas)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatwasSuccessImpl &&
            (identical(other.fatwas, fatwas) || other.fatwas == fatwas));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fatwas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatwasSuccessImplCopyWith<_$FatwasSuccessImpl> get copyWith =>
      __$$FatwasSuccessImplCopyWithImpl<_$FatwasSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) error,
    required TResult Function(QADataEntity faqs) faqsSuccess,
    required TResult Function(QADataEntity fatwas) fatwasSuccess,
  }) {
    return fatwasSuccess(fatwas);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? error,
    TResult? Function(QADataEntity faqs)? faqsSuccess,
    TResult? Function(QADataEntity fatwas)? fatwasSuccess,
  }) {
    return fatwasSuccess?.call(fatwas);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? error,
    TResult Function(QADataEntity faqs)? faqsSuccess,
    TResult Function(QADataEntity fatwas)? fatwasSuccess,
    required TResult orElse(),
  }) {
    if (fatwasSuccess != null) {
      return fatwasSuccess(fatwas);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FaqsError value) error,
    required TResult Function(FaqsSuccess value) faqsSuccess,
    required TResult Function(FatwasSuccess value) fatwasSuccess,
  }) {
    return fatwasSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FaqsError value)? error,
    TResult? Function(FaqsSuccess value)? faqsSuccess,
    TResult? Function(FatwasSuccess value)? fatwasSuccess,
  }) {
    return fatwasSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FaqsError value)? error,
    TResult Function(FaqsSuccess value)? faqsSuccess,
    TResult Function(FatwasSuccess value)? fatwasSuccess,
    required TResult orElse(),
  }) {
    if (fatwasSuccess != null) {
      return fatwasSuccess(this);
    }
    return orElse();
  }
}

abstract class FatwasSuccess implements QaStates {
  const factory FatwasSuccess(final QADataEntity fatwas) = _$FatwasSuccessImpl;

  QADataEntity get fatwas;
  @JsonKey(ignore: true)
  _$$FatwasSuccessImplCopyWith<_$FatwasSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
