class ProductStory {
  String? storyTime;
  String? story;
  String? storyType;
  String? storyImage;
  String? storyAdditionalImages;
  String? promoImage;
  int? orderQty;
  String? lastAddToCart;
  int? availableStock;
  String? myId;
  String? ezShopName;
  dynamic companyName;
  dynamic companyLogo;
  dynamic companyEmail;
  String? currencyCode;
  int? unitPrice;
  int? discountAmount;
  int? discountPercent;
  String? iMyID;
  String? shopName;
  String? shopLogo;
  String? shopLink;
  String? friendlyTimeDiff;
  String? slNo;

  ProductStory(
      {this.storyTime,
      this.story,
      this.storyType,
      this.storyImage,
      this.storyAdditionalImages,
      this.promoImage,
      this.orderQty,
      this.lastAddToCart,
      this.availableStock,
      this.myId,
      this.ezShopName,
      this.companyName,
      this.companyLogo,
      this.companyEmail,
      this.currencyCode,
      this.unitPrice,
      this.discountAmount,
      this.discountPercent,
      this.iMyID,
      this.shopName,
      this.shopLogo,
      this.shopLink,
      this.friendlyTimeDiff,
      this.slNo});

  ProductStory.fromJson(Map<String, dynamic> json)
      : storyTime = json['storyTime'],
        story = json['story'],
        storyType = json['storyType'],
        storyImage = json['storyImage'],
        storyAdditionalImages = json['storyAdditionalImages'],
        promoImage = json['promoImage'],
        orderQty = json['orderQty'],
        lastAddToCart = json['lastAddToCart'],
        availableStock = json['availableStock'],
        myId = json['myId'],
        ezShopName = json['ezShopName'],
        companyName = json['companyName'],
        companyLogo = json['companyLogo'],
        companyEmail = json['companyEmail'],
        currencyCode = json['currencyCode'],
        unitPrice = json['unitPrice'],
        discountAmount = json['discountAmount'],
        discountPercent = json['discountPercent'],
        iMyID = json['iMyID'],
        shopName = json['shopName'],
        shopLogo = json['shopLogo'],
        shopLink = json['shopLink'],
        friendlyTimeDiff = json['friendlyTimeDiff'],
        slNo = json['slNo'];
}
