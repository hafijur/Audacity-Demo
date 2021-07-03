class Seller {
  String slNo;
  String sellerName;
  String sellerProfilePhoto;
  String sellerItemPhoto;
  String ezShopName;
  num defaultPushScore;
  dynamic aboutCompany;
  int allowCOD;
  dynamic division;
  dynamic subDivision;
  String city;
  String state;
  String zipcode;
  String country;
  String currencyCode;
  int orderQty;
  int orderAmount;
  int salesQty;
  int salesAmount;
  int highestDiscountPercent;
  String lastAddToCart;
  String lastAddToCartThatSold;

  Seller(
      {this.slNo,
      this.sellerName,
      this.sellerProfilePhoto,
      this.sellerItemPhoto,
      this.ezShopName,
      this.defaultPushScore,
      this.aboutCompany,
      this.allowCOD,
      this.division,
      this.subDivision,
      this.city,
      this.state,
      this.zipcode,
      this.country,
      this.currencyCode,
      this.orderQty,
      this.orderAmount,
      this.salesQty,
      this.salesAmount,
      this.highestDiscountPercent,
      this.lastAddToCart,
      this.lastAddToCartThatSold});

  Seller.fromJson(Map<String, dynamic> json)
      : slNo = json['slNo'],
        sellerName = json['sellerName'],
        sellerProfilePhoto = json['sellerProfilePhoto'],
        sellerItemPhoto = json['sellerItemPhoto'],
        ezShopName = json['ezShopName'],
        defaultPushScore = json['defaultPushScore'],
        aboutCompany = json['aboutCompany'],
        allowCOD = json['allowCOD'],
        division = json['division'],
        subDivision = json['subDivision'],
        city = json['city'],
        state = json['state'],
        zipcode = json['zipcode'],
        country = json['country'],
        currencyCode = json['currencyCode'],
        orderQty = json['orderQty'],
        orderAmount = json['orderAmount'],
        salesQty = json['salesQty'],
        salesAmount = json['salesAmount'],
        highestDiscountPercent = json['highestDiscountPercent'],
        lastAddToCart = json['lastAddToCart'],
        lastAddToCartThatSold = json['lastAddToCartThatSold'];

  @override
  String toString() {
    return 'Seller(slNo: $slNo, sellerName: $sellerName, sellerProfilePhoto: $sellerProfilePhoto, sellerItemPhoto: $sellerItemPhoto, ezShopName: $ezShopName, defaultPushScore: $defaultPushScore, aboutCompany: $aboutCompany, allowCOD: $allowCOD, division: $division, subDivision: $subDivision, city: $city, state: $state, zipcode: $zipcode, country: $country, currencyCode: $currencyCode, orderQty: $orderQty, orderAmount: $orderAmount, salesQty: $salesQty, salesAmount: $salesAmount, highestDiscountPercent: $highestDiscountPercent, lastAddToCart: $lastAddToCart, lastAddToCartThatSold: $lastAddToCartThatSold)';
  }
}
