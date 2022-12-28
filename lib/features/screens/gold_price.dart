// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/core/config/dio.dart';
import 'package:testing_app/features/screens/gold_provider.dart';

import '../../cores/models/lakPriceModel.dart';

class GoldPrice extends StatefulWidget {
  const GoldPrice({Key? key}) : super(key: key);

  @override
  State<GoldPrice> createState() => _GoldPriceState();
}

class _GoldPriceState extends State<GoldPrice> {

void getPrice() async{
  final data = await Provider.of<GoldProvider>(context, listen: false).getGlobalGoldPrice();
setState(() {
  
});
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPrice();
  }


  @override
  Widget build(BuildContext context) {
    // final data = context.select<GoldProvider, LakPriceModel?>((value) => value.lakPriceModel);
    final data = context.watch<GoldProvider>().lakPriceModel;
    // final data = context.read<GoldProvider>().lakPriceModel;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          stops: [0.1, 0.6, 0.9],
          colors: [
            Color.fromARGB(255, 70, 168, 248),
            Color.fromARGB(255, 35, 118, 201),
            Color.fromARGB(255, 20, 79, 148),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'ລາຄາທອງຄຳ ${data?.date}',
            // '',
            style: const TextStyle(fontSize: 18.0),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: ListView(
            children: [
              kpvprice(),
              kpvsellprice(),
              titleprice(),
              globalprice(context),
              titleglobalprice(),
              globalprice(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget kpvprice() {
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
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 12, 80, 136),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      '08/11/2022',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(3.0),
                  child: const Text(
                    '10:00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.white,
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

Widget kpvsellprice() {
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
                        child: const Center(
                          child: Text(
                            '15.300.000 ກີບ',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
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
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
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
                    'ລາຄາຊື້',
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
                        child: const Center(
                          child: Text(
                            '15.300.000 ກີບ',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.white),
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
                    'ລາຄາຊື້',
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

Widget titleprice() {
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

Widget globalprice(BuildContext context) {
  final data = context.watch<GoldProvider>().lakPriceModel;
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
          children:[
            Expanded(
              flex: 3,
              child: Text(
                '${data?.items}',
                style: TextStyle(
                  color: Color.fromARGB(255, 192, 178, 54),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text('-81,000.00'),
            ),
            Expanded(
              flex: 2,
              child: Text(
                '-0.25%',
                style: TextStyle(
                  color: Color.fromARGB(255, 172, 39, 46),
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
          //USDGold
          children: const [
            Expanded(
              flex: 3,
              child: Text(
                '30, LAK',
                style: TextStyle(
                  color: Color.fromARGB(255, 192, 178, 54),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text('-81,000.00'),
            ),
            Expanded(
              flex: 2,
              child: Text(
                '-0.25%',
                style: TextStyle(
                  color: Color.fromARGB(255, 172, 39, 46),
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
          //THBGold
          children: const [
            Expanded(
              flex: 3,
              child: Text(
                '30,000,00,.00 LAK',
                style: TextStyle(
                  color: Color.fromARGB(255, 192, 178, 54),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text('-81,000.00'),
            ),
            Expanded(
              flex: 2,
              child: Text(
                '-0.25%',
                style: TextStyle(
                  color: Color.fromARGB(255, 172, 39, 46),
                ),
              ),
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
          children: const [
            Expanded(
              flex: 3,
              child: Text(
                '30,000,00,.00 LAK',
                style: TextStyle(
                  color: Color.fromARGB(255, 192, 178, 54),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text('-81,000.00'),
            ),
            Expanded(
              flex: 2,
              child: Text(
                '-0.25%',
                style: TextStyle(
                  color: Color.fromARGB(255, 172, 39, 46),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget titleglobalprice() {
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
