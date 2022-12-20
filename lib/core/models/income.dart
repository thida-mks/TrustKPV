import 'dart:ffi';

class Income {
  late String incomeItem;
  late Double incomeamount;
  late String ccy;
  late Double incomedate;
  Income(
      {required this.incomeamount,
      required this.ccy,
      required this.incomedate,
      required this.incomeItem});
}
 