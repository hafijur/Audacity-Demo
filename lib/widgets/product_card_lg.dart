import 'package:audacity_demo/models/ProductStory.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductCardLg extends StatelessWidget {
  final ProductStory productStory;

  const ProductCardLg(this.productStory, {Key key}) : super(key: key);

  Widget iconWithText(IconData icon, String txt) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.black),
        SizedBox(width: 2),
        Text(
          txt,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(left: 5, right: 5),
            leading: CircleAvatar(
              backgroundImage:
                  CachedNetworkImageProvider(productStory.shopLogo),
            ),
            title: Text(
              productStory.shopName ?? '',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(productStory.friendlyTimeDiff ?? ''),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 0),
            child: Text(
              productStory.story ?? '',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    CachedNetworkImageProvider(productStory.storyImage ?? ''),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                iconWithText(Icons.card_giftcard,
                    "${productStory.currencyCode.toUpperCase()} ${productStory.unitPrice}"),
                iconWithText(Icons.menu,
                    "${productStory.availableStock} Available Stock"),
                iconWithText(Icons.shopping_cart_outlined,
                    "${productStory.orderQty} Order(s)")
              ],
            ),
          )
        ],
      ),
    );
  }
}
