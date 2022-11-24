import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_api/features/products/data/model/product_rating_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  factory ProductModel({
    int? id,
    String? title,
    double? price,
    String? description,
    String? category,
    String? image,
    @Default(false) bool isFavourite,
    ProductRatingModel? rating,
  }) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
