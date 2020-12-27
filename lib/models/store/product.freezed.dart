// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

// ignore: unused_element
  _Product call(
      {String name, String productId, String price, String avgRating}) {
    return _Product(
      name: name,
      productId: productId,
      price: price,
      avgRating: avgRating,
    );
  }

// ignore: unused_element
  Product fromJson(Map<String, Object> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  String get name;
  String get productId;
  String get price;
  String get avgRating;

  Map<String, dynamic> toJson();
  $ProductCopyWith<Product> get copyWith;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call({String name, String productId, String price, String avgRating});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object name = freezed,
    Object productId = freezed,
    Object price = freezed,
    Object avgRating = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      productId: productId == freezed ? _value.productId : productId as String,
      price: price == freezed ? _value.price : price as String,
      avgRating: avgRating == freezed ? _value.avgRating : avgRating as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call({String name, String productId, String price, String avgRating});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object name = freezed,
    Object productId = freezed,
    Object price = freezed,
    Object avgRating = freezed,
  }) {
    return _then(_Product(
      name: name == freezed ? _value.name : name as String,
      productId: productId == freezed ? _value.productId : productId as String,
      price: price == freezed ? _value.price : price as String,
      avgRating: avgRating == freezed ? _value.avgRating : avgRating as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Product implements _Product {
  const _$_Product({this.name, this.productId, this.price, this.avgRating});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductFromJson(json);

  @override
  final String name;
  @override
  final String productId;
  @override
  final String price;
  @override
  final String avgRating;

  @override
  String toString() {
    return 'Product(name: $name, productId: $productId, price: $price, avgRating: $avgRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.avgRating, avgRating) ||
                const DeepCollectionEquality()
                    .equals(other.avgRating, avgRating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(avgRating);

  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {String name,
      String productId,
      String price,
      String avgRating}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get name;
  @override
  String get productId;
  @override
  String get price;
  @override
  String get avgRating;
  @override
  _$ProductCopyWith<_Product> get copyWith;
}

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
class _$ProductCategoryTearOff {
  const _$ProductCategoryTearOff();

// ignore: unused_element
  _ProductCategory call(
      {String productCategoryId, String name, String petType}) {
    return _ProductCategory(
      productCategoryId: productCategoryId,
      name: name,
      petType: petType,
    );
  }

// ignore: unused_element
  ProductCategory fromJson(Map<String, Object> json) {
    return ProductCategory.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProductCategory = _$ProductCategoryTearOff();

/// @nodoc
mixin _$ProductCategory {
  String get productCategoryId;
  String get name;
  String get petType;

  Map<String, dynamic> toJson();
  $ProductCategoryCopyWith<ProductCategory> get copyWith;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res>;
  $Res call({String productCategoryId, String name, String petType});
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  final ProductCategory _value;
  // ignore: unused_field
  final $Res Function(ProductCategory) _then;

  @override
  $Res call({
    Object productCategoryId = freezed,
    Object name = freezed,
    Object petType = freezed,
  }) {
    return _then(_value.copyWith(
      productCategoryId: productCategoryId == freezed
          ? _value.productCategoryId
          : productCategoryId as String,
      name: name == freezed ? _value.name : name as String,
      petType: petType == freezed ? _value.petType : petType as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductCategoryCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$ProductCategoryCopyWith(
          _ProductCategory value, $Res Function(_ProductCategory) then) =
      __$ProductCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String productCategoryId, String name, String petType});
}

/// @nodoc
class __$ProductCategoryCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res>
    implements _$ProductCategoryCopyWith<$Res> {
  __$ProductCategoryCopyWithImpl(
      _ProductCategory _value, $Res Function(_ProductCategory) _then)
      : super(_value, (v) => _then(v as _ProductCategory));

  @override
  _ProductCategory get _value => super._value as _ProductCategory;

  @override
  $Res call({
    Object productCategoryId = freezed,
    Object name = freezed,
    Object petType = freezed,
  }) {
    return _then(_ProductCategory(
      productCategoryId: productCategoryId == freezed
          ? _value.productCategoryId
          : productCategoryId as String,
      name: name == freezed ? _value.name : name as String,
      petType: petType == freezed ? _value.petType : petType as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProductCategory implements _ProductCategory {
  const _$_ProductCategory({this.productCategoryId, this.name, this.petType});

  factory _$_ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductCategoryFromJson(json);

  @override
  final String productCategoryId;
  @override
  final String name;
  @override
  final String petType;

  @override
  String toString() {
    return 'ProductCategory(productCategoryId: $productCategoryId, name: $name, petType: $petType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductCategory &&
            (identical(other.productCategoryId, productCategoryId) ||
                const DeepCollectionEquality()
                    .equals(other.productCategoryId, productCategoryId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.petType, petType) ||
                const DeepCollectionEquality().equals(other.petType, petType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productCategoryId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(petType);

  @override
  _$ProductCategoryCopyWith<_ProductCategory> get copyWith =>
      __$ProductCategoryCopyWithImpl<_ProductCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductCategoryToJson(this);
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory(
      {String productCategoryId,
      String name,
      String petType}) = _$_ProductCategory;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$_ProductCategory.fromJson;

  @override
  String get productCategoryId;
  @override
  String get name;
  @override
  String get petType;
  @override
  _$ProductCategoryCopyWith<_ProductCategory> get copyWith;
}
