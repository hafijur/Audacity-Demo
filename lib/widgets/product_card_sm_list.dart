import 'package:audacity_demo/models/Product.dart';
import 'package:audacity_demo/widgets/product_card_sm.dart';
import 'package:audacity_demo/widgets/section_title.dart';
import 'package:flutter/material.dart';

class ProductCardSmList extends StatelessWidget {
  final String caption;
  final List<Product> products;
  const ProductCardSmList(this.caption, this.products, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(caption),
              SizedBox(height: 5),
              Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (BuildContext ctx, int index) => Container(
                    width: MediaQuery.of(context).size.width / 4,
                    child: ProductCardSm(
                        products[index].productName!,
                        products[index].shortDetails!,
                        products[index].productImage!),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
