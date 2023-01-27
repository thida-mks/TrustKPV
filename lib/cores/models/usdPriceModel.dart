// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals, camel_case_types

class usdPriceModel {
  int? ts;
  int? tsj;
  String? date;
  List<Items>? items;

  usdPriceModel({this.ts, this.tsj, this.date, this.items});

  usdPriceModel.fromJson(Map<String, dynamic> json) {
    ts = json['ts'];
    tsj = json['tsj'];
    date = json['date'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ts'] = this.ts;
    data['tsj'] = this.tsj;
    data['date'] = this.date;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? curr;
  double? xauPrice;
  double? chgXau;
  double? pcXau;

  Items(
      {this.curr,
      this.xauPrice,
      this.chgXau,
      this.pcXau,});

  Items.fromJson(Map<String, dynamic> json) {
    curr = json['curr'];
    xauPrice = json['xauPrice'];
    chgXau = json['chgXau'];
    pcXau = json['pcXau'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['curr'] = this.curr;
    data['xauPrice'] = this.xauPrice;
    data['chgXau'] = this.chgXau;
    data['pcXau'] = this.pcXau;
    return data;
  }
}