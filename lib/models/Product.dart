class Product {
  String? slNo;
  String? productName;
  String? shortDetails;
  String? productDescription;
  int? availableStock;
  int? orderQty;
  int? salesQty;
  int? orderAmount;
  int? salesAmount;
  int? discountPercent;
  int? discountAmount;
  int? unitPrice;
  String? productImage;
  String? sellerName;
  String? sellerProfilePhoto;
  String? sellerCoverPhoto;
  String? ezShopName;
  num? defaultPushScore;
  String? myProductVarId;

  Product(
      {this.slNo,
      this.productName,
      this.shortDetails,
      this.productDescription,
      this.availableStock,
      this.orderQty,
      this.salesQty,
      this.orderAmount,
      this.salesAmount,
      this.discountPercent,
      this.discountAmount,
      this.unitPrice,
      this.productImage,
      this.sellerName,
      this.sellerProfilePhoto,
      this.sellerCoverPhoto,
      this.ezShopName,
      this.defaultPushScore,
      this.myProductVarId});

  Product.fromJson(Map<String, dynamic> json)
      : slNo = json['slNo'],
        productName = json['productName'],
        shortDetails = json['shortDetails'],
        productDescription = json['productDescription'],
        availableStock = json['availableStock'],
        orderQty = json['orderQty'],
        salesQty = json['salesQty'],
        orderAmount = json['orderAmount'],
        salesAmount = json['salesAmount'],
        discountPercent = json['discountPercent'],
        discountAmount = json['discountAmount'],
        unitPrice = json['unitPrice'],
        productImage = json['productImage'],
        sellerName = json['sellerName'],
        sellerProfilePhoto = json['sellerProfilePhoto'],
        sellerCoverPhoto = json['sellerCoverPhoto'],
        ezShopName = json['ezShopName'],
        defaultPushScore = json['defaultPushScore'],
        myProductVarId = json['myProductVarId'];

  @override
  String toString() {
    return 'Product(slNo: $slNo, productName: $productName, shortDetails: $shortDetails, productDescription: $productDescription, availableStock: $availableStock, orderQty: $orderQty, salesQty: $salesQty, orderAmount: $orderAmount, salesAmount: $salesAmount, discountPercent: $discountPercent, discountAmount: $discountAmount, unitPrice: $unitPrice, productImage: $productImage, sellerName: $sellerName, sellerProfilePhoto: $sellerProfilePhoto, sellerCoverPhoto: $sellerCoverPhoto, ezShopName: $ezShopName, defaultPushScore: $defaultPushScore, myProductVarId: $myProductVarId)';
  }
}
