import 'package:audacity_demo/models/ProductStory.dart';
import 'package:audacity_demo/widgets/product_card_lg.dart';
import 'package:flutter/material.dart';

class ProductCardLgList extends StatelessWidget {
  final List<ProductStory> productStories;
  const ProductCardLgList(this.productStories, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: ScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 10);
      },
      shrinkWrap: true,
      itemCount: productStories.length,
      itemBuilder: (BuildContext ctx, int index) =>
          ProductCardLg(productStories[index]),
    );
  }
}
