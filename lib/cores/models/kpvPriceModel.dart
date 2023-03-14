// ignore_for_file: file_names, unnecessary_new, prefer_collection_literals, unnecessary_this

// class KpvPriceModel {
//   List<Data>? data;
//   bool? error;

//   KpvPriceModel({this.data, this.error});

//   KpvPriceModel.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//     error = json['error'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     data['error'] = this.error;
//     return data;
//   }

// }

// class Data {
//   String? id;
//   String? showDateTime;
//   int? oneBahtSalePrice;
//   int? oneBahtBuyPrice;
//   int? oneSalungSalePrice;
//   int? oneSalungBuyPrice;
//   String? updatedAt;

//   Data(
//       {this.id,
//       this.showDateTime,
//       this.oneBahtSalePrice,
//       this.oneBahtBuyPrice,
//       this.oneSalungSalePrice,
//       this.oneSalungBuyPrice,
//       this.updatedAt,});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     showDateTime = json['show_date_time'];
//     oneBahtSalePrice = json['one_baht_sale_price'];
//     oneBahtBuyPrice = json['one_baht_buy_price'];
//     oneSalungSalePrice = json['one_salung_sale_price'];
//     oneSalungBuyPrice = json['one_salung_buy_price'];
//     updatedAt = json['updated_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['one_baht_sale_price'] = this.oneBahtSalePrice;
//     data['one_baht_buy_price'] = this.oneBahtBuyPrice;
//     data['one_salung_sale_price'] = this.oneSalungSalePrice;
//     data['one_salung_buy_price'] = this.oneSalungBuyPrice;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }



class KpvPriceModel {
  List<Data>? data;
  bool? error;
  int? total;

  KpvPriceModel({this.data, this.error, this.total});

  KpvPriceModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    error = json['error'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['error'] = this.error;
    data['total'] = this.total;
    return data;
  }
}

class Data {
  String? id;
  int? oneBahtSalePrice;
  int? oneBahtBuyPrice;
  // int? twoSalungSalePrice;
  // int? twoSalungBuyPrice;
  int? oneSalungSalePrice;
  int? oneSalungBuyPrice;
  // int? fiveHunSalePrice;
  // int? fiveHunBuyPrice;
  // int? threeHunSalePrice;
  // int? threeHunBuyPrice;
  // int? twoHunSalePrice;
  // int? twoHunBuyPrice;
  int? oneBahtSalePriceGoldBar;
  int? oneBahtBuyPriceGoldBar;
  // int? twoSalungSalePriceGoldBar;
  // int? twoSalungBuyPriceGoldBar;
  int? oneSalungSalePriceGoldBar;
  int? oneSalungBuyPriceGoldBar;
  // int? fiveHunSalePriceGoldBar;
  // int? fiveHunBuyPriceGoldBar;
  // int? threeHunSalePriceGoldBar;
  // int? threeHunBuyPriceGoldBar;
  // int? twoHunSalePriceGoldBar;
  // int? twoHunBuyPriceGoldBar;
  // int? oneBahtSalePriceTHB;
  // int? oneBahtBuyPriceTHB;
  // int? twoSalungSalePriceTHB;
  // int? twoSalungBuyPriceTHB;
  // int? oneSalungSalePriceTHB;
  // int? oneSalungBuyPriceTHB;
  // int? fiveHunSalePriceTHB;
  // int? fiveHunBuyPriceTHB;
  // int? threeHunSalePriceTHB;
  // int? threeHunBuyPriceTHB;
  // int? twoHunSalePriceTHB;
  // int? twoHunBuyPriceTHB;
  // int? oneBahtSalePriceGoldBarTHB;
  // int? oneBahtBuyPriceGoldBarTHB;
  // int? twoSalungSalePriceGoldBarTHB;
  // int? twoSalungBuyPriceGoldBarTHB;
  // int? oneSalungSalePriceGoldBarTHB;
  // int? oneSalungBuyPriceGoldBarTHB;
  // int? fiveHunSalePriceGoldBarTHB;
  // int? fiveHunBuyPriceGoldBarTHB;
  // int? threeHunSalePriceGoldBarTHB;
  // int? threeHunBuyPriceGoldBarTHB;
  // int? twoHunSalePriceGoldBarTHB;
  // int? twoHunBuyPriceGoldBarTHB;
  // String? showDateTime;
  // String? createdBy;
  // String? createdByFullName;
  // String? updateByFullName;
  // String? updatedBy;
  // String? createdAt;
  // String? updatedAt;

  Data(
      {this.id,
      this.oneBahtSalePrice,
      this.oneBahtBuyPrice,
      this.oneSalungSalePrice,
      this.oneSalungBuyPrice,
      this.oneBahtSalePriceGoldBar,
      this.oneBahtBuyPriceGoldBar,
      this.oneSalungSalePriceGoldBar,
      this.oneSalungBuyPriceGoldBar,});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    oneBahtSalePrice = json['one_baht_sale_price'];
    oneBahtBuyPrice = json['one_baht_buy_price'];
    // twoSalungSalePrice = json['two_salung_sale_price'];
    // twoSalungBuyPrice = json['two_salung_buy_price'];
    oneSalungSalePrice = json['one_salung_sale_price'];
    oneSalungBuyPrice = json['one_salung_buy_price'];
    // fiveHunSalePrice = json['five_hun_sale_price'];
    // fiveHunBuyPrice = json['five_hun_buy_price'];
    // threeHunSalePrice = json['three_hun_sale_price'];
    // threeHunBuyPrice = json['three_hun_buy_price'];
    // twoHunSalePrice = json['two_hun_sale_price'];
    // twoHunBuyPrice = json['two_hun_buy_price'];
    oneBahtSalePriceGoldBar = json['one_baht_sale_price_gold_bar'];
    oneBahtBuyPriceGoldBar = json['one_baht_buy_price_gold_bar'];
    // twoSalungSalePriceGoldBar = json['two_salung_sale_price_gold_bar'];
    // twoSalungBuyPriceGoldBar = json['two_salung_buy_price_gold_bar'];
    oneSalungSalePriceGoldBar = json['one_salung_sale_price_gold_bar'];
    oneSalungBuyPriceGoldBar = json['one_salung_buy_price_gold_bar'];
    // fiveHunSalePriceGoldBar = json['five_hun_sale_price_gold_bar'];
    // fiveHunBuyPriceGoldBar = json['five_hun_buy_price_gold_bar'];
    // threeHunSalePriceGoldBar = json['three_hun_sale_price_gold_bar'];
    // threeHunBuyPriceGoldBar = json['three_hun_buy_price_gold_bar'];
    // twoHunSalePriceGoldBar = json['two_hun_sale_price_gold_bar'];
    // twoHunBuyPriceGoldBar = json['two_hun_buy_price_gold_bar'];
    // oneBahtSalePriceTHB = json['one_baht_sale_priceTHB'];
    // oneBahtBuyPriceTHB = json['one_baht_buy_priceTHB'];
    // twoSalungSalePriceTHB = json['two_salung_sale_priceTHB'];
    // twoSalungBuyPriceTHB = json['two_salung_buy_priceTHB'];
    // oneSalungSalePriceTHB = json['one_salung_sale_priceTHB'];
    // oneSalungBuyPriceTHB = json['one_salung_buy_priceTHB'];
    // fiveHunSalePriceTHB = json['five_hun_sale_priceTHB'];
    // fiveHunBuyPriceTHB = json['five_hun_buy_priceTHB'];
    // threeHunSalePriceTHB = json['three_hun_sale_priceTHB'];
    // threeHunBuyPriceTHB = json['three_hun_buy_priceTHB'];
    // twoHunSalePriceTHB = json['two_hun_sale_priceTHB'];
    // twoHunBuyPriceTHB = json['two_hun_buy_priceTHB'];
    // oneBahtSalePriceGoldBarTHB = json['one_baht_sale_price_gold_barTHB'];
    // oneBahtBuyPriceGoldBarTHB = json['one_baht_buy_price_gold_barTHB'];
    // twoSalungSalePriceGoldBarTHB = json['two_salung_sale_price_gold_barTHB'];
    // twoSalungBuyPriceGoldBarTHB = json['two_salung_buy_price_gold_barTHB'];
    // oneSalungSalePriceGoldBarTHB = json['one_salung_sale_price_gold_barTHB'];
    // oneSalungBuyPriceGoldBarTHB = json['one_salung_buy_price_gold_barTHB'];
    // fiveHunSalePriceGoldBarTHB = json['five_hun_sale_price_gold_barTHB'];
    // fiveHunBuyPriceGoldBarTHB = json['five_hun_buy_price_gold_barTHB'];
    // threeHunSalePriceGoldBarTHB = json['three_hun_sale_price_gold_barTHB'];
    // threeHunBuyPriceGoldBarTHB = json['three_hun_buy_price_gold_barTHB'];
    // twoHunSalePriceGoldBarTHB = json['two_hun_sale_price_gold_barTHB'];
    // twoHunBuyPriceGoldBarTHB = json['two_hun_buy_price_gold_barTHB'];
    // showDateTime = json['show_date_time'];
    // createdBy = json['created_by'];
    // createdByFullName = json['created_by_full_name'];
    // updateByFullName = json['update_by_full_name'];
    // updatedBy = json['updated_by'];
    // createdAt = json['created_at'];
    // updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['one_baht_sale_price'] = this.oneBahtSalePrice;
    data['one_baht_buy_price'] = this.oneBahtBuyPrice;
    // data['two_salung_sale_price'] = this.twoSalungSalePrice;
    // data['two_salung_buy_price'] = this.twoSalungBuyPrice;
    data['one_salung_sale_price'] = this.oneSalungSalePrice;
    data['one_salung_buy_price'] = this.oneSalungBuyPrice;
    // data['five_hun_sale_price'] = this.fiveHunSalePrice;
    // data['five_hun_buy_price'] = this.fiveHunBuyPrice;
    // data['three_hun_sale_price'] = this.threeHunSalePrice;
    // data['three_hun_buy_price'] = this.threeHunBuyPrice;
    // data['two_hun_sale_price'] = this.twoHunSalePrice;
    // data['two_hun_buy_price'] = this.twoHunBuyPrice;
    data['one_baht_sale_price_gold_bar'] = this.oneBahtSalePriceGoldBar;
    data['one_baht_buy_price_gold_bar'] = this.oneBahtBuyPriceGoldBar;
    // data['two_salung_sale_price_gold_bar'] = this.twoSalungSalePriceGoldBar;
    // data['two_salung_buy_price_gold_bar'] = this.twoSalungBuyPriceGoldBar;
    data['one_salung_sale_price_gold_bar'] = this.oneSalungSalePriceGoldBar;
    data['one_salung_buy_price_gold_bar'] = this.oneSalungBuyPriceGoldBar;
    // data['five_hun_sale_price_gold_bar'] = this.fiveHunSalePriceGoldBar;
    // data['five_hun_buy_price_gold_bar'] = this.fiveHunBuyPriceGoldBar;
    // data['three_hun_sale_price_gold_bar'] = this.threeHunSalePriceGoldBar;
    // data['three_hun_buy_price_gold_bar'] = this.threeHunBuyPriceGoldBar;
    // data['two_hun_sale_price_gold_bar'] = this.twoHunSalePriceGoldBar;
    // data['two_hun_buy_price_gold_bar'] = this.twoHunBuyPriceGoldBar;
    // data['one_baht_sale_priceTHB'] = this.oneBahtSalePriceTHB;
    // data['one_baht_buy_priceTHB'] = this.oneBahtBuyPriceTHB;
    // data['two_salung_sale_priceTHB'] = this.twoSalungSalePriceTHB;
    // data['two_salung_buy_priceTHB'] = this.twoSalungBuyPriceTHB;
    // data['one_salung_sale_priceTHB'] = this.oneSalungSalePriceTHB;
    // data['one_salung_buy_priceTHB'] = this.oneSalungBuyPriceTHB;
    // data['five_hun_sale_priceTHB'] = this.fiveHunSalePriceTHB;
    // data['five_hun_buy_priceTHB'] = this.fiveHunBuyPriceTHB;
    // data['three_hun_sale_priceTHB'] = this.threeHunSalePriceTHB;
    // data['three_hun_buy_priceTHB'] = this.threeHunBuyPriceTHB;
    // data['two_hun_sale_priceTHB'] = this.twoHunSalePriceTHB;
    // data['two_hun_buy_priceTHB'] = this.twoHunBuyPriceTHB;
    // data['one_baht_sale_price_gold_barTHB'] = this.oneBahtSalePriceGoldBarTHB;
    // data['one_baht_buy_price_gold_barTHB'] = this.oneBahtBuyPriceGoldBarTHB;
    // data['two_salung_sale_price_gold_barTHB'] =
    //     this.twoSalungSalePriceGoldBarTHB;
    // data['two_salung_buy_price_gold_barTHB'] = this.twoSalungBuyPriceGoldBarTHB;
    // data['one_salung_sale_price_gold_barTHB'] =
    //     this.oneSalungSalePriceGoldBarTHB;
    // data['one_salung_buy_price_gold_barTHB'] = this.oneSalungBuyPriceGoldBarTHB;
    // data['five_hun_sale_price_gold_barTHB'] = this.fiveHunSalePriceGoldBarTHB;
    // data['five_hun_buy_price_gold_barTHB'] = this.fiveHunBuyPriceGoldBarTHB;
    // data['three_hun_sale_price_gold_barTHB'] = this.threeHunSalePriceGoldBarTHB;
    // data['three_hun_buy_price_gold_barTHB'] = this.threeHunBuyPriceGoldBarTHB;
    // data['two_hun_sale_price_gold_barTHB'] = this.twoHunSalePriceGoldBarTHB;
    // data['two_hun_buy_price_gold_barTHB'] = this.twoHunBuyPriceGoldBarTHB;
    // data['show_date_time'] = this.showDateTime;
    // data['created_by'] = this.createdBy;
    // data['created_by_full_name'] = this.createdByFullName;
    // data['update_by_full_name'] = this.updateByFullName;
    // data['updated_by'] = this.updatedBy;
    // data['created_at'] = this.createdAt;
    // data['updated_at'] = this.updatedAt;
    return data;
  }
}