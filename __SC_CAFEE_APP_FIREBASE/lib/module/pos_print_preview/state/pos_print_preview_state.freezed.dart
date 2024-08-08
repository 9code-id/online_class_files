// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pos_print_preview_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PosPrintPreviewState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PosPrintPreviewStateCopyWith<PosPrintPreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosPrintPreviewStateCopyWith<$Res> {
  factory $PosPrintPreviewStateCopyWith(PosPrintPreviewState value,
          $Res Function(PosPrintPreviewState) then) =
      _$PosPrintPreviewStateCopyWithImpl<$Res, PosPrintPreviewState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$PosPrintPreviewStateCopyWithImpl<$Res,
        $Val extends PosPrintPreviewState>
    implements $PosPrintPreviewStateCopyWith<$Res> {
  _$PosPrintPreviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosPrintPreviewStateImplCopyWith<$Res>
    implements $PosPrintPreviewStateCopyWith<$Res> {
  factory _$$PosPrintPreviewStateImplCopyWith(_$PosPrintPreviewStateImpl value,
          $Res Function(_$PosPrintPreviewStateImpl) then) =
      __$$PosPrintPreviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$PosPrintPreviewStateImplCopyWithImpl<$Res>
    extends _$PosPrintPreviewStateCopyWithImpl<$Res, _$PosPrintPreviewStateImpl>
    implements _$$PosPrintPreviewStateImplCopyWith<$Res> {
  __$$PosPrintPreviewStateImplCopyWithImpl(_$PosPrintPreviewStateImpl _value,
      $Res Function(_$PosPrintPreviewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$PosPrintPreviewStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PosPrintPreviewStateImpl implements _PosPrintPreviewState {
  _$PosPrintPreviewStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'PosPrintPreviewState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosPrintPreviewStateImplCopyWith<_$PosPrintPreviewStateImpl>
      get copyWith =>
          __$$PosPrintPreviewStateImplCopyWithImpl<_$PosPrintPreviewStateImpl>(
              this, _$identity);
}

abstract class _PosPrintPreviewState implements PosPrintPreviewState {
  factory _PosPrintPreviewState({int counter}) = _$PosPrintPreviewStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$PosPrintPreviewStateImplCopyWith<_$PosPrintPreviewStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
