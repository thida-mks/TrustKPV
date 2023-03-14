// ignore_for_file: file_names, unnecessary_new, prefer_collection_literals, unnecessary_this

class ThbPriceModel {
  int? ts;
  int? tsj;
  String? date;
  List<Items>? items;

  ThbPriceModel({this.date, this.items});

  ThbPriceModel.fromJson(Map<String, dynamic> json) {
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
    data['curr'] = this.curr;
    data['xauPrice'] = this.xauPrice;
    data['xagPrice'] = this.xagPrice;
    data['chgXau'] = this.chgXau;
    data['chgXag'] = this.chgXag;
    data['pcXau'] = this.pcXau;
    data['pcXag'] = this.pcXag;
    return data;
  }
}