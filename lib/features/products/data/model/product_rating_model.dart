import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_rating_model.freezed.dart';
part 'product_rating_model.g.dart';

@freezed
class ProductRatingModel with _$ProductRatingModel {
  factory ProductRatingModel({
    double? rate,
    int? count,
  }) = _ProductRatingModel;
  factory ProductRatingModel.fromJson(Map<String, dynamic> json) =>
      _$ProductRatingModelFromJson(json);
}
