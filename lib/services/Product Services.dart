import 'dart:convert';
import 'package:http/http.dart';

import '../model.dart';
import 'Database Helper.dart';

class ProductDataService {
 static Future getProductsData() async
 {
  try
 {
  Response response = await get(Uri.parse("https://fakestoreapi.com/products"));
  if (response.statusCode == 200) {
   List<dynamic> productData = jsonDecode(response.body);
   List<ProductModel> productsDataList = [];
   productData.forEach((element) {
    ProductModel product = ProductModel.fromJson(element);
    productsDataList.add(product); });
   await DataBaseHelper().insertProducts(productsDataList);
  }
  else {
   throw Exception('Failed to load posts'); }
 } catch (e)
  {
   print("Fetchind Product Exception");
  } } }