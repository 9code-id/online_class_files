// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_checkout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosCheckoutState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  set paymentMethod(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosCheckoutStateCopyWith<PosCheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosCheckoutStateCopyWith<$Res> {
  factory $PosCheckoutStateCopyWith(
          PosCheckoutState value, $Res Function(PosCheckoutState) then) =
      _$PosCheckoutStateCopyWithImpl<$Res, PosCheckoutState>;
  @useResult
  $Res call({int counter, String paymentMethod});
}

/// @nodoc
class _$PosCheckoutStateCopyWithImpl<$Res, $Val extends PosCheckoutState>
    implements $PosCheckoutStateCopyWith<$Res> {
  _$PosCheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? paymentMethod = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosCheckoutStateImplCopyWith<$Res>
    implements $PosCheckoutStateCopyWith<$Res> {
  factory _$$PosCheckoutStateImplCopyWith(_$PosCheckoutStateImpl value,
          $Res Function(_$PosCheckoutStateImpl) then) =
      __$$PosCheckoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, String paymentMethod});
}

/// @nodoc
class __$$PosCheckoutStateImplCopyWithImpl<$Res>
    extends _$PosCheckoutStateCopyWithImpl<$Res, _$PosCheckoutStateImpl>
    implements _$$PosCheckoutStateImplCopyWith<$Res> {
  __$$PosCheckoutStateImplCopyWithImpl(_$PosCheckoutStateImpl _value,
      $Res Function(_$PosCheckoutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? paymentMethod = null,
  }) {
    return _then(_$PosCheckoutStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PosCheckoutStateImpl implements _PosCheckoutState {
  _$PosCheckoutStateImpl({this.counter = 0, this.paymentMethod = "Cash"});

  @override
  @JsonKey()
  int counter;
  @override
  @JsonKey()
  String paymentMethod;

  @override
  String toString() {
    return 'PosCheckoutState(counter: $counter, paymentMethod: $paymentMethod)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosCheckoutStateImplCopyWith<_$PosCheckoutStateImpl> get copyWith =>
      __$$PosCheckoutStateImplCopyWithImpl<_$PosCheckoutStateImpl>(
          this, _$identity);
}

abstract class _PosCheckoutState implements PosCheckoutState {
  factory _PosCheckoutState({int counter, String paymentMethod}) =
      _$PosCheckoutStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  String get paymentMethod;
  set paymentMethod(String value);
  @override
  @JsonKey(ignore: true)
  _$$PosCheckoutStateImplCopyWith<_$PosCheckoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
