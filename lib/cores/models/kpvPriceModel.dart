class KpvPriceModel {
  List<Data>? data;
  bool? error;

  KpvPriceModel({this.data, this.error});

  KpvPriceModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['error'] = this.error;
    return data;
  }

}

class Data {
  String? id;
  String? showDateTime;
  int? oneBahtSalePrice;
  int? oneBahtBuyPrice;
  int? oneSalungSalePrice;
  int? oneSalungBuyPrice;
  String? updatedAt;

  Data(
      {this.id,
      this.showDateTime,
      this.oneBahtSalePrice,
      this.oneBahtBuyPrice,
      this.oneSalungSalePrice,
      this.oneSalungBuyPrice,
      this.updatedAt,});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    showDateTime = json['show_date_time'];
    oneBahtSalePrice = json['one_baht_sale_price'];
    oneBahtBuyPrice = json['one_baht_buy_price'];
    oneSalungSalePrice = json['one_salung_sale_price'];
    oneSalungBuyPrice = json['one_salung_buy_price'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['one_baht_sale_price'] = this.oneBahtSalePrice;
    data['one_baht_buy_price'] = this.oneBahtBuyPrice;
    data['one_salung_sale_price'] = this.oneSalungSalePrice;
    data['one_salung_buy_price'] = this.oneSalungBuyPrice;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}