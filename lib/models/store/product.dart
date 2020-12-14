import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    String name,
    String productId,
    String price,
    String avgRating,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$_$_ProductToJson(this);
}

@freezed
abstract class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    String productCategoryId,
    String name,
    String petType,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$_$_ProductCategoryToJson(this);
}
