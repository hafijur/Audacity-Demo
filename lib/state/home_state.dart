import 'package:flutter/foundation.dart';
import 'package:audacity_demo/models/Product.dart';
import 'package:audacity_demo/models/ProductStory.dart';
import 'package:audacity_demo/models/Seller.dart';

class HomeState {
  List<Seller>? trendingSellers;
  List<Seller>? newShops;
  List<Product>? trendingProducts;
  List<Product>? newArrivalProducts;
  List<ProductStory>? productStories;
  HomeState({
    this.trendingSellers,
    this.newShops,
    this.trendingProducts,
    this.newArrivalProducts,
    this.productStories,
  });

  HomeState copyWith({
    List<Seller>? trendingSellers,
    List<Seller>? newShops,
    List<Product>? trendingProducts,
    List<Product>? newArrivalProducts,
    List<ProductStory>? productStories,
  }) {
    return HomeState(
      trendingSellers: trendingSellers ?? this.trendingSellers,
      newShops: newShops ?? this.newShops,
      trendingProducts: trendingProducts ?? this.trendingProducts,
      newArrivalProducts: newArrivalProducts ?? this.newArrivalProducts,
      productStories: productStories ?? this.productStories,
    );
  }

  @override
  String toString() {
    return 'HomeState(trendingSellers: $trendingSellers, newShops: $newShops, trendingProducts: $trendingProducts, newArrivalProducts: $newArrivalProducts, productStories: $productStories)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomeState &&
        listEquals(other.trendingSellers, trendingSellers) &&
        listEquals(other.newShops, newShops) &&
        listEquals(other.trendingProducts, trendingProducts) &&
        listEquals(other.newArrivalProducts, newArrivalProducts) &&
        listEquals(other.productStories, productStories);
  }

  @override
  int get hashCode {
    return trendingSellers.hashCode ^
        newShops.hashCode ^
        trendingProducts.hashCode ^
        newArrivalProducts.hashCode ^
        productStories.hashCode;
  }
}
