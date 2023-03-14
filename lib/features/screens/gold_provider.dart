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
      notifyListeners();

      return res.data;
    }
  }

  UsdPriceModel? usdPriceModel;
  getGlobalUsdGoldPrice() async {
    Response res = await dioglobalgold.get('dbXRates/USD');
    if (res.statusCode == 200) {
      usdPriceModel = UsdPriceModel.fromJson(res.data);
      notifyListeners();

      return res.data;
    }
  }

  ThbPriceModel? thbPriceModel;
  getGlobalThbGoldPrice() async {
    Response res = await dioglobalgold.get('dbXRates/THB');
    if (res.statusCode == 200) {
      thbPriceModel = ThbPriceModel.fromJson(res.data);
      notifyListeners();

      return res.data;
    }
  }

  CnyPriceModel? cnyPriceModel;
  getGlobalCnyGoldPrice() async {
    Response res = await dioglobalgold.get('dbXRates/CNY');
    if (res.statusCode == 200) {
      cnyPriceModel = CnyPriceModel.fromJson(res.data);
      notifyListeners();

      return res.data;
    }
  }

  KpvPriceModel? kpvPriceModel;
  getKpvGoldPrice() async {
    final DateTime now = DateTime.now();
    final formatter = DateFormat('yyyy-MM-dd');
    final getoldDate = now.subtract(
      const Duration(days: 4),
    );
    final String currentdate = formatter.format(now);
    final String oldDate = formatter.format(getoldDate);
    Response res = await diokpvgold.get(
        'https://kpv-api.lailaolab.la/gateway-service/api/v1/gateway/current-price?from_date=$oldDate&to_date=$currentdate');
    if (res.statusCode == 200) {
      kpvPriceModel = KpvPriceModel.fromJson(res.data);
      notifyListeners();

      return res.data[0];
    }
    notifyListeners();
  }
}
