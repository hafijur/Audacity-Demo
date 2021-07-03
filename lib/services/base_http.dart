import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:audacity_demo/models/Product.dart';
import 'package:audacity_demo/models/ProductStory.dart';
import 'package:audacity_demo/models/Seller.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';

class BaseHttp {
  static const String BASE_URL =
      "https://bd.ezassist.me/ws/mpFeed?instanceName=bd.ezassist.me&opt=";

  static String getUrl(String url) => BASE_URL + "" + url;

  static getData(String response, {bool extract = true}) {
    try {
      return extract ? jsonDecode(response)[0] : jsonDecode(response);
    } catch (e) {
      throw ("Decoding Error : $e");
    }
  }

  static Future<String> fetch(url, {bool updateCache = false}) async {
    var dir = await getTemporaryDirectory();
    File file = File(dir.path + '/' + url);

    if (file.existsSync() && !updateCache) {
      log("Reading $url From Cache");
      return file.readAsStringSync();
    } else if (file.existsSync() && updateCache) {
      log("Updating cache $url From Network");
      Response response = await get(Uri.parse("$BASE_URL$url"),
          headers: {"Accept": "application/json"});

      file.writeAsStringSync(response.body, flush: true, mode: FileMode.write);
      return response.body;
    } else {
      try {
        log("Reading $url From Network");
        Response response = await get(Uri.parse("$BASE_URL$url"),
            headers: {"Accept": "application/json"});

        file.writeAsStringSync(response.body,
            flush: true, mode: FileMode.write);
        return response.body;
      } on SocketException {
        log("No Internet");
        return "[[]]";
      } catch (e) {
        throw ("Error : $e");
      }
    }
  }

  static Future<List<Seller>> getTrendingSellers(
      {bool updateCache = false}) async {
    String response = await fetch("trending_seller", updateCache: updateCache);
    var jsonList = getData(response);
    return jsonList.map<Seller>((seller) => Seller.fromJson(seller)).toList();
  }

  static Future<List<Seller>> getNewShops({bool updateCache = false}) async {
    String response = await fetch("newShops", updateCache: updateCache);
    var jsonList = getData(response);
    return jsonList.map<Seller>((seller) => Seller.fromJson(seller)).toList();
  }

  static Future<List<Product>> getTrendingProducts(
      {bool updateCache = false}) async {
    String response = await fetch("trendingProducts", updateCache: updateCache);
    var jsonList = getData(response);
    return jsonList
        .map<Product>((product) => Product.fromJson(product))
        .toList();
  }

  static Future<List<Product>> getNewArrivalProducts(
      {bool updateCache = false}) async {
    String response = await fetch("newArrivals", updateCache: updateCache);
    var jsonList = getData(response);
    return jsonList
        .map<Product>((product) => Product.fromJson(product))
        .toList();
  }

  static Future<List<ProductStory>> getProductStories(
      {bool updateCache = false}) async {
    String response = await fetch("stories", updateCache: updateCache);
    var jsonList = getData(response);
    return jsonList
        .map<ProductStory>((product) => ProductStory.fromJson(product))
        .toList();
  }
}
