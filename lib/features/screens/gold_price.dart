import 'package:flutter/material.dart';

class GoldPrices extends StatelessWidget {
  const GoldPrices({Key? key}) : super(key: key);

  Widget kpvprice() {
    return Row(children: <Widget>[
      Expanded(
        flex: 1,
        child: Column(
          
        ),
      ),
      Expanded(child: Image.asset('assets/logos/kpv_gold.png'),)
    ],);
  }

  Widget kpvsellprice() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Column(
            children: const <Widget>[Card()],
          )
        ],
      ),
    );
  }

  Widget globalprice() {
    return Table(
      border: TableBorder.all(),
      children: <TableRow>[_tableRow],
    );
  }

  final TableRow _tableRow = const TableRow(children: <Widget>[
    Padding(
      padding: EdgeInsets.all(10.0),
      child: Text('ລາຄາ/Ounces'),
    ),
    Padding(
      padding: EdgeInsets.all(10.0),
      child: Text('ປ່ຽນແປງ'),
    ),
    Padding(
      padding: EdgeInsets.all(10.0),
      child: Text('ເປີເຊັນ/ວັນ'),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
          stops: [0.1, 0.6, 0.9],
          colors: [
            Color.fromARGB(255, 87, 176, 248),
            Color.fromARGB(255, 35, 118, 201),
            Color.fromARGB(255, 24, 95, 177),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'ລາຄາທອງຄຳ',
            style: TextStyle(fontSize: 18.0),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: kpvprice(),
              ),
              Expanded(
                flex: 1,
                child: kpvsellprice(),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: const Text(
                        'ລາຄາທອງຄຳອີງຕາມຕະຫຼາດສາກົນ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    globalprice(),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: const Text(
                        'ລາຄາທອງຄຳອີງຕາມຕະຫຼາດສາກົນ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    globalprice(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
