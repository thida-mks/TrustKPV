// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:testing_app/core/config/dio.dart';
import 'package:testing_app/cores/models/lakPriceModel.dart';

class GoldProvider extends ChangeNotifier {
  LakPriceModel? lakPriceModel;
  getGlobalGoldPrice() async{
    Response res = await dio.get('dbXRates/LAK');
    if (res.statusCode == 200) {
       lakPriceModel = LakPriceModel.fromJson(res.data);
       notifyListeners();
      return res.data;
    }
  }
}