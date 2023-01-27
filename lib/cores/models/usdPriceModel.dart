class UsdPriceModel {
  String? date;
  List<Items>? items;

  UsdPriceModel({this.date, this.items});

  UsdPriceModel.fromJson(Map<String, dynamic> json) {
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
    data['date'] = date;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? curr;
  double? xauPrice;
  double? xagPrice;
  double? chgXau;
  double? chgXag;
  double? pcXau;
  double? pcXag;

  Items(
      {this.curr,
      this.xauPrice,
      this.xagPrice,
      this.chgXau,
      this.chgXag,
      this.pcXau,
      this.pcXag,});

  Items.fromJson(Map<String, dynamic> json) {
    curr = json['curr'];
    xauPrice = json['xauPrice'];
    xagPrice = json['xagPrice'];
    chgXau = json['chgXau'];
    chgXag = json['chgXag'];
    pcXau = json['pcXau'];
    pcXag = json['pcXag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['curr'] = curr;
    data['xauPrice'] = xauPrice;
    data['xagPrice'] = xagPrice;
    data['chgXau'] = chgXau;
    data['chgXag'] = chgXag;
    data['pcXau'] = pcXau;
    data['pcXag'] = pcXag;
    return data;
  }
}