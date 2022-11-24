// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductRatingModel _$$_ProductRatingModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductRatingModel(
      rate: (json['rate'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_ProductRatingModelToJson(
        _$_ProductRatingModel instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
