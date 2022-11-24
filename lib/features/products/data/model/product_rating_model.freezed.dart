// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_rating_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductRatingModel _$ProductRatingModelFromJson(Map<String, dynamic> json) {
  return _ProductRatingModel.fromJson(json);
}

/// @nodoc
mixin _$ProductRatingModel {
  double? get rate => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductRatingModelCopyWith<ProductRatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRatingModelCopyWith<$Res> {
  factory $ProductRatingModelCopyWith(
          ProductRatingModel value, $Res Function(ProductRatingModel) then) =
      _$ProductRatingModelCopyWithImpl<$Res, ProductRatingModel>;
  @useResult
  $Res call({double? rate, int? count});
}

/// @nodoc
class _$ProductRatingModelCopyWithImpl<$Res, $Val extends ProductRatingModel>
    implements $ProductRatingModelCopyWith<$Res> {
  _$ProductRatingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = freezed,
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductRatingModelCopyWith<$Res>
    implements $ProductRatingModelCopyWith<$Res> {
  factory _$$_ProductRatingModelCopyWith(_$_ProductRatingModel value,
          $Res Function(_$_ProductRatingModel) then) =
      __$$_ProductRatingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? rate, int? count});
}

/// @nodoc
class __$$_ProductRatingModelCopyWithImpl<$Res>
    extends _$ProductRatingModelCopyWithImpl<$Res, _$_ProductRatingModel>
    implements _$$_ProductRatingModelCopyWith<$Res> {
  __$$_ProductRatingModelCopyWithImpl(
      _$_ProductRatingModel _value, $Res Function(_$_ProductRatingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = freezed,
    Object? count = freezed,
  }) {
    return _then(_$_ProductRatingModel(
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductRatingModel implements _ProductRatingModel {
  _$_ProductRatingModel({this.rate, this.count});

  factory _$_ProductRatingModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductRatingModelFromJson(json);

  @override
  final double? rate;
  @override
  final int? count;

  @override
  String toString() {
    return 'ProductRatingModel(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductRatingModel &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rate, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductRatingModelCopyWith<_$_ProductRatingModel> get copyWith =>
      __$$_ProductRatingModelCopyWithImpl<_$_ProductRatingModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductRatingModelToJson(
      this,
    );
  }
}

abstract class _ProductRatingModel implements ProductRatingModel {
  factory _ProductRatingModel({final double? rate, final int? count}) =
      _$_ProductRatingModel;

  factory _ProductRatingModel.fromJson(Map<String, dynamic> json) =
      _$_ProductRatingModel.fromJson;

  @override
  double? get rate;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$_ProductRatingModelCopyWith<_$_ProductRatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
