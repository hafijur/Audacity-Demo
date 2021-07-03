import 'package:audacity_demo/models/Product.dart';
import 'package:audacity_demo/models/ProductStory.dart';
import 'package:audacity_demo/models/Seller.dart';

class HomeState {
  List<Seller> trendingSellers;
  List<Seller> newShops;
  List<Product> trendingProducts;
  List<Product> newArrivalProducts;
  List<ProductStory> productStories;
  HomeState({
    this.trendingSellers,
    this.newShops,
    this.trendingProducts,
    this.newArrivalProducts,
    this.productStories,
  });

  HomeState copyWith({
    List<Seller> trendingSellers,
    List<Seller> newShops,
    List<Product> trendingProducts,
    List<Product> newArrivalProducts,
    List<ProductStory> productStories,
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
}
