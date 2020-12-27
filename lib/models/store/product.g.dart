// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    name: json['name'] as String,
    productId: json['productId'] as String,
    price: json['price'] as String,
    avgRating: json['avgRating'] as String,
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'name': instance.name,
      'productId': instance.productId,
      'price': instance.price,
      'avgRating': instance.avgRating,
    };

_$_ProductCategory _$_$_ProductCategoryFromJson(Map<String, dynamic> json) {
  return _$_ProductCategory(
    productCategoryId: json['productCategoryId'] as String,
    name: json['name'] as String,
    petType: json['petType'] as String,
  );
}

Map<String, dynamic> _$_$_ProductCategoryToJson(_$_ProductCategory instance) =>
    <String, dynamic>{
      'productCategoryId': instance.productCategoryId,
      'name': instance.name,
      'petType': instance.petType,
    };
