// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:testing_app/core/config/dio.dart';
import 'package:testing_app/cores/models/cnyPriceModel.dart';
import 'package:testing_app/cores/models/kpvPriceModel.dart';
import 'package:testing_app/cores/models/lakPriceModel.dart';
import 'package:testing_app/cores/models/thbPriceModel.dart';
import 'package:testing_app/cores/models/usdPriceModel.dart';

class GoldProvider extends ChangeNotifier {
  LakPriceModel? lakPriceModel;
  getGlobalLakGoldPrice() async {
    Response res = await dioglobalgold.get('dbXRates/LAK');
    if (res.statusCode == 200) {
      lakPriceModel = LakPriceModel.fromJson(res.data);
      return res.data;
    }
  }

  UsdPriceModel? usdPriceModel;
  getGlobalUsdGoldPrice() async {
    Response res = await dioglobalgold.get('dbXRates/USD');
    if (res.statusCode == 200) {
      usdPriceModel = UsdPriceModel.fromJson(res.data);
      return res.data;
    }
  }

  ThbPriceModel? thbPriceModel;
  getGlobalThbGoldPrice() async {
    Response res = await dioglobalgold.get('dbXRates/THB');
    if (res.statusCode == 200) {
      thbPriceModel = ThbPriceModel.fromJson(res.data);
      return res.data;
    }
  }

  CnyPriceModel? cnyPriceModel;
  getGlobalCnyGoldPrice() async {
    Response res = await dioglobalgold.get('dbXRates/CNY');
    if (res.statusCode == 200) {
      cnyPriceModel = CnyPriceModel.fromJson(res.data);
      return res.data;
    }
  }

  KpvPriceModel? kpvPriceModel;
  getKpvGoldPrice() async {
    final DateTime now = DateTime.now();
    late DateFormat formatter = DateFormat('yyyy-MM-dd');
    final getyesterdayDate = now.subtract(
      const Duration(days: 1),
    );
    final String currentdate = formatter.format(now);
    Response res = await diokpvgold.get(
        'https://pkg94kdx82.execute-api.ap-southeast-1.amazonaws.com/api-gateway-service/api/v1/gateway/current-price?from_date=$currentdate&to_date=$currentdate');
    if (res.data != null) {
      print('Current Date: $currentdate');
      if (res.statusCode == 200) {
        kpvPriceModel = KpvPriceModel.fromJson(res.data);
        return res.data;
      }
    } else {
      final String yesterdayDate = formatter.format(getyesterdayDate);
      Response resyesterday = await diokpvgold.get(
          'https://pkg94kdx82.execute-api.ap-southeast-1.amazonaws.com/api-gateway-service/api/v1/gateway/current-price?from_date=$yesterdayDate&to_date=$yesterdayDate');
      print(resyesterday.data);
      print('Yesterday Date: $yesterdayDate');
      if (resyesterday.statusCode == 200) {
        kpvPriceModel = KpvPriceModel.fromJson(resyesterday.data);
        return resyesterday.data;
      }
    }
  }
}
