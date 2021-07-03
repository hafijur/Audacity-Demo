import 'package:audacity_demo/models/Seller.dart';
import 'package:audacity_demo/widgets/product_card_md.dart';
import 'package:audacity_demo/widgets/section_title.dart';
import 'package:flutter/material.dart';

class ProductCardMdList extends StatelessWidget {
  final String caption;
  final List<Seller> sellers;
  const ProductCardMdList(this.caption, this.sellers, {Key? key})
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
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10);
                },
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: sellers.length,
                itemBuilder: (ctx, i) => Container(
                  width: MediaQuery.of(context).size.width / 4,
                  child: ProductCardMd(
                      sellers[i].sellerName, sellers[i].sellerItemPhoto),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
