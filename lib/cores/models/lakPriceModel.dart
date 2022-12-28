class LakPriceModel {
  String? date;
  List<Items>? items;

  LakPriceModel({this.date, this.items});

  LakPriceModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v),);
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