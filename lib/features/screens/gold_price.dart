import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/features/screens/gold_provider.dart';

NumberFormat priceformatter = NumberFormat.currency(decimalDigits: 2, locale: 'en_us', symbol: "");
NumberFormat priceformatterNodecimal = NumberFormat.currency(decimalDigits: 0, locale: 'en_us', symbol: "");
// final priceformatter = NumberFormat.decimalPattern();
final DateTime now = DateTime.now();
final DateFormat formatter = DateFormat('dd/MM/yyyy');
final String currentdate = formatter.format(now);

class GoldPrice extends StatefulWidget {
  const GoldPrice({Key? key}) : super(key: key);

  @override
  State<GoldPrice> createState() => _GoldPriceState();
}

class _GoldPriceState extends State<GoldPrice> {
  void getPrice() async {
    context.read<GoldProvider>().getGlobalLakGoldPrice();
    context.read<GoldProvider>().getGlobalUsdGoldPrice();
    context.read<GoldProvider>().getGlobalThbGoldPrice();
    context.read<GoldProvider>().getGlobalCnyGoldPrice();
    context.read<GoldProvider>().getKpvGoldPrice();
  }

  @override
  void initState() {
    super.initState();
    getPrice();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async => getPrice(),
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: ListView(
            children: [
              const KpvPrice(),
              const KpvSellPrice(),
              titlegoldprice(),
              const GlobalGoldPrice(),
              titlesilverprice(),
              const GlobalSilverPrice(),
            ],
          ),
        ),
      ),
    );
  }
}

class KpvPrice extends StatelessWidget {
  const KpvPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0,
      height: 150.0,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.asset(
                    'assets/logos/kpv_logo.png',
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                    child: const Text(
                      'ລາຄາຄຳປະຈຳວັນ',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 12, 80, 136),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        //  dateformatter.format(
                        currentdate,
                        // ),
                        // '${kpvdata?.data![0].updatedAt}',
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset('assets/logos/kpv_gold.png'),
          )
        ],
      ),
    );
  }
}

class KpvSellPrice extends StatelessWidget {
  const KpvSellPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kpvdata = context.watch<GoldProvider>().kpvPriceModel;
    return SizedBox(
      width: 200.0,
      height: 120.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 50.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    color: Color.fromARGB(255, 28, 127, 207),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 30.0,
                          margin: const EdgeInsets.only(left: 10.0),
                          child: const Text(
                            '01 ບາດ',
                            style: TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: Color.fromARGB(255, 21, 92, 151),
                          ),
                          child: Center(
                            child: Text(
                              '${kpvdata?.data?[0].oneBahtSalePrice.toString() != null ? priceformatterNodecimal.format(kpvdata?.data?[0].oneBahtSalePrice).toString() : ""}'
                              ' ກີບ',
                              style: const TextStyle(fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 5.0),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Color.fromARGB(255, 21, 92, 151),
                  ),
                  child: const Center(
                    child: Text(
                      'ລາຄາຂາຍ',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  // width: double.infinity,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    color: Color.fromARGB(255, 28, 127, 207),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 30.0,
                          margin: const EdgeInsets.only(left: 10.0),
                          child: const Text(
                            '01 ສະຫຼຶງ',
                            style: TextStyle(fontSize: 18.0, color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: Color.fromARGB(255, 21, 92, 151),
                          ),
                          child: Center(
                            child: Text(
                              //priceformatter.format(
                              '${kpvdata?.data?[0].oneSalungSalePrice.toString() != null ? priceformatterNodecimal.format(kpvdata?.data?[0].oneSalungSalePrice).toString() : ""}'
                              ' ກີບ',
                              //),
                              style: const TextStyle(fontSize: 20.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 5.0),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Color.fromARGB(255, 21, 92, 151),
                  ),
                  child: const Center(
                    child: Text(
                      'ລາຄາຂາຍ',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GlobalGoldPrice extends StatelessWidget {
  const GlobalGoldPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usddata = context.watch<GoldProvider>().usdPriceModel;
    final thbdata = context.watch<GoldProvider>().thbPriceModel;
    final cnydata = context.watch<GoldProvider>().cnyPriceModel;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
            ),
            border: Border.all(color: Colors.transparent, width: 2),
          ),
          child: Row(
            //Header
            children: const [
              Expanded(
                flex: 3,
                child: Text(
                  'ລາຄາ/Ounces',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'ປ່ຽນແປງ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'ເປີເຊັນ/ວັນ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const LakGlobalGoldPrice(),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            //USDGold
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  //priceformatter.format(
                  '${usddata?.items?[0].xauPrice.toString() != null ? priceformatter.format(usddata?.items?[0].xauPrice).toString() : ""}'
                  ' USD',
                  //),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 192, 178, 54),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  //priceformatter.format(
                  usddata?.items![0].chgXau?.toStringAsFixed(2) ?? "",
                  //),
                ),
              ),
              Expanded(
                flex: 2,
                child: usddata?.items![0].pcXau?.toStringAsFixed(2) != null
                    ? Text(
                        //priceformatter.format(
                        usddata?.items![0].pcXau?.toStringAsFixed(2) ?? "",
                        //),
                        style: TextStyle(
                          // color: usddata!.items![0].chgXag! < 0.0 ?Color.fromARGB(255, 172, 39, 46) : Colors.green,
                          color: usddata!.items![0].chgXau! < 0.0 ? const Color.fromARGB(255, 172, 39, 46) : Colors.green,
                        ),
                      )
                    : const Text(''),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            //THBGold
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  //priceformatter.format(
                  '${thbdata?.items?[0].xauPrice.toString() != null ? priceformatter.format(thbdata?.items?[0].xauPrice).toString() : ""}'
                  ' THB',
                  //),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 192, 178, 54),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Text(
                    //priceformatter.format(
                    thbdata?.items![0].chgXau?.toStringAsFixed(2) ?? "",
                  ) //),
                  ),
              Expanded(
                flex: 2,
                child: thbdata?.items![0].pcXau?.toStringAsFixed(2) != null
                    ? Text(
                        //priceformatter.format(
                        thbdata?.items![0].pcXau?.toStringAsFixed(2) ?? "",
                        //),
                        style: TextStyle(
                          color: thbdata!.items![0].pcXau! < 0.0 ? const Color.fromARGB(255, 172, 39, 46) : Colors.green,
                        ),
                      )
                    : const Text(''),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
          ),
          child: Row(
            //LAKGold
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  //priceformatter.format(
                  '${cnydata?.items?[0].xauPrice.toString() != null ? priceformatter.format(cnydata?.items?[0].xauPrice).toString() : ""}'
                  ' CNY',
                  //),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 192, 178, 54),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  //priceformatter.format(
                  cnydata?.items![0].chgXau?.toStringAsFixed(2) ?? "",
                  //),
                ),
              ),
              Expanded(
                flex: 2,
                child: cnydata?.items![0].pcXau?.toStringAsFixed(2) != null
                    ? Text(
                        //priceformatter.format(
                        cnydata?.items![0].pcXau?.toStringAsFixed(2) ?? "",
                        //),
                        style: TextStyle(
                          color: cnydata!.items![0].pcXau! < 0.0 ? const Color.fromARGB(255, 172, 39, 46) : Colors.green,
                        ),
                      )
                    : const Text(''),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LakGlobalGoldPrice extends StatelessWidget {
  const LakGlobalGoldPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final lakdata = context.watch<GoldProvider>().lakPriceModel;

    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        //LAKGold
        children: [
          Expanded(
            flex: 3,
            child: Text(
              //priceformatter.format(
              '${lakdata?.items?[0].xauPrice.toString() != null ? priceformatter.format(lakdata?.items?[0].xauPrice).toString() : ""}'
              ' LAK',

              //),
              style: const TextStyle(
                color: Color.fromARGB(255, 192, 178, 54),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              //priceformatter.format(
              lakdata?.items?[0].chgXau.toString() != null ? priceformatter.format(lakdata?.items?[0].chgXau).toString() : "",
              //),
            ),
          ),
          Expanded(
            flex: 2,
            child: lakdata?.items![0].pcXau?.toStringAsFixed(2) != null
                ? Text(
                    //priceformatter.format(
                    lakdata?.items![0].pcXau?.toStringAsFixed(2) ?? "",
                    //),
                    style: TextStyle(
                      color: lakdata!.items![0].pcXau! < 0.0 ? const Color.fromARGB(255, 172, 39, 46) : Colors.green,
                    ),
                  )
                : const Text(''),
          ),
        ],
      ),
    );
  }
}

class GlobalSilverPrice extends StatelessWidget {
  const GlobalSilverPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lakdata = context.watch<GoldProvider>().lakPriceModel;
    final usddata = context.watch<GoldProvider>().usdPriceModel;
    final thbdata = context.watch<GoldProvider>().thbPriceModel;
    final cnydata = context.watch<GoldProvider>().cnyPriceModel;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
            ),
            border: Border.all(color: Colors.transparent, width: 2),
          ),
          child: Row(
            //Header
            children: const [
              Expanded(
                flex: 3,
                child: Text(
                  'ລາຄາ/Ounces',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'ປ່ຽນແປງ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  'ເປີເຊັນ/ວັນ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            //LAKGold
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  //priceformatter.format(
                  '${lakdata?.items?[0].xagPrice.toString() != null ? priceformatter.format(lakdata?.items?[0].xagPrice).toString() : ""}'
                  ' LAK',
                  //),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 192, 178, 54),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  //priceformatter.format(
                  lakdata?.items?[0].chgXag.toString() != null ? priceformatter.format(lakdata?.items?[0].chgXag).toString() : "",
                  //),
                ),
              ),
              Expanded(
                flex: 2,
                child: lakdata?.items![0].pcXag?.toStringAsFixed(2) != null
                    ? Text(
                        //priceformatter.format(
                        lakdata?.items![0].pcXag?.toStringAsFixed(2) ?? "",
                        //),
                        style: TextStyle(
                          color: lakdata!.items![0].pcXag! < 0.0 ? const Color.fromARGB(255, 172, 39, 46) : Colors.green,
                        ),
                      )
                    : const Text(''),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            //USDGold
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  //priceformatter.format(
                  '${usddata?.items?[0].xagPrice.toString() != null ? priceformatter.format(usddata?.items?[0].xagPrice).toString() : ""}'
                  ' USD',
                  //),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 192, 178, 54),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  //priceformatter.format(
                  usddata?.items![0].chgXag?.toStringAsFixed(2) ?? "",
                  //),
                ),
              ),
              Expanded(
                flex: 2,
                child: usddata?.items![0].pcXag?.toStringAsFixed(2) != null
                    ? Text(
                        //priceformatter.format(
                        usddata?.items![0].pcXag?.toStringAsFixed(2) ?? "",
                        //),
                        style: TextStyle(
                          color: usddata!.items![0].pcXag! < 0.0 ? const Color.fromARGB(255, 172, 39, 46) : Colors.green,
                        ),
                      )
                    : const Text(''),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            //THBGold
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  //priceformatter.format(
                  '${thbdata?.items?[0].xagPrice.toString() != null ? priceformatter.format(thbdata?.items?[0].xagPrice).toString() : ""}'
                  ' THB',
                  //),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 192, 178, 54),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  //priceformatter.format(
                  thbdata?.items![0].chgXag?.toStringAsFixed(2) ?? "",
                  //),
                ),
              ),
              Expanded(
                flex: 2,
                child: thbdata?.items![0].pcXag?.toStringAsFixed(2) != null
                    ? Text(
                        //priceformatter.format(
                        thbdata?.items![0].pcXag?.toStringAsFixed(2) ?? "",
                        //),
                        style: TextStyle(
                          color: thbdata!.items![0].pcXag! < 0.0 ? const Color.fromARGB(255, 172, 39, 46) : Colors.green,
                        ),
                      )
                    : const Text(''),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
            ),
          ),
          child: Row(
            //LAKGold
            children: [
              Expanded(
                flex: 3,
                child: Text(
                  //priceformatter.format(
                  '${cnydata?.items?[0].xagPrice?.toStringAsFixed(2) != null ? priceformatter.format(usddata?.items?[0].xagPrice).toString() : ""}'
                  ' CNY',
                  //),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 192, 178, 54),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  //priceformatter.format(
                  cnydata?.items![0].chgXag?.toStringAsFixed(2) ?? "",
                  //),
                ),
              ),
              Expanded(
                flex: 2,
                child: cnydata?.items![0].pcXag?.toStringAsFixed(2) != null
                    ? Text(
                        //priceformatter.format(
                        cnydata?.items![0].pcXag?.toStringAsFixed(2) ?? "",
                        //),
                        style: TextStyle(
                          color: cnydata!.items![0].pcXag! < 0.0 ? const Color.fromARGB(255, 172, 39, 46) : Colors.green,
                        ),
                      )
                    : const Text(''),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget titlegoldprice() {
  return const SizedBox(
    width: double.infinity,
    height: 50.0,
    child: Center(
      child: Text(
        'ລາຄາທອງຄຳອີງຕາມຕະຫຼາດທອງຄຳ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget titlesilverprice() {
  return const SizedBox(
    width: double.infinity,
    height: 50.0,
    child: Center(
      child: Text(
        'ລາຄາເງິນອີງຕາມຕະຫຼາດສາກົນ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    ),
  );
}
