//==========================================================================

import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:async';

fajar() => Auraad(
    ptitle: 'Baad Fajar',
    panj: '''
LA ILAHA ILALLAHU
AL MALIKUL HAQQUL MUBEEN''',
    ganj: 'YA AZIZU',
    wird: '''
YA HAYYU 
YA QAYYUM''',
    sura: 'Surat - Al - Yaseen');

//==========================================================================

class Auraad extends StatefulWidget {
  final String panj, ganj, wird, sura, ptitle;
  Auraad({Key key, this.ptitle, this.panj, this.ganj, this.wird, this.sura});

  @override
  _AuraadState createState() => _AuraadState();
}

class _AuraadState extends State<Auraad> {
  Timer _timer;
  var timerCounter;
  var msfcounter1 = 5;
  var msfcounter2 = 20;
  var counterPt = 20;
  var counter1 = 20;
  var counter2 = 20;
  var counter3 = 20;
  var counter4 = 20;
  int _start = 10;
  countdown(Timer timer) {
    if (msfcounter1 < 1) {
      timer.cancel();
    } else {
      msfcounter1 = msfcounter1 - 1;
      print(msfcounter1);
    }
  }

  Future counting(Timer timer) async {
    await countdown(timer);
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          var i = 0;
          switch (i) {
            case 0:
              countdown(timer);
              break;
            case 1:
              if (msfcounter2 < 1) {
                timer.cancel();
                i++;
                print(i);
              } else {
                msfcounter2 = msfcounter2 - 1;
                print(msfcounter2);
              }
              break;
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 30,
                title: Text('${widget.ptitle}')),
            body: Flex(direction: Axis.vertical, children: [
              Text("$_start"),
              mSf(msfcounter1, msfcounter2),
              pTt(panj: widget.panj, counter: counterPt),
              pGq(
                  ganj: widget.ganj,
                  counter: counter1,
                  counter1: counter2,
                  counter2: counter2,
                  counter3: counter3),
              pWapS(wird: widget.wird, sura: widget.sura),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Expanded(
                        child: MaterialButton(
                            color: Colors.green,
                            onPressed: () {
                              startTimer();
                              print(_start);
                            },
                            child: Text('Count'))),
                  ])),
            ])));
  }
}

//==========================================================================

mSf(counterf1, counterf2) => BigCnt(
    occ: 'Mabain Sunnat Wa Farz',
    child: Row(children: [msf1(counterf1), msf2(counterf2)]));

pTt({String panj, counter}) => BigCnt(
    occ: 'Panj Tasbeeh',
    child: Row(children: [pT(panj: panj, counterT: counter)]));

pGq({String ganj, counter, counter1, counter2, counter3}) => BigCnt(
    occ: 'Panj Ganj Qadri',
    child: Column(children: [
      Row(children: [pgqA1(counter1), pgqA2(counter2), pgqA3(counter3)]),
      Row(children: [pgqA(counter)]),
      Row(children: [pgqB1(), pgqB2(ganj: ganj), pgqB3()]),
      Row(children: [pgqB()]),
    ]));

pWapS({String wird, sura}) => BigCnt(
    occ: '      Panj Wird E Asma              |     Panj Sura',
    child: Row(children: [pWa(wird: wird), pS(sura: sura)]));

//==========================================================================

class BigCnt extends StatelessWidget {
  final String occ;
  final Widget child;
  final Color clr, clrs;
  BigCnt({this.occ, this.clr, this.clrs, @required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.fromLTRB(5, 4, 5, 0),
        color: clr ?? Colors.green,
        elevation: 2,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(occ,
                  style: TextStyle(
                      color: clrs ?? Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              child,
            ]));
  }
}

//==========================================================================

msf1(counterF1) => Cnt(ht: 56, counter: counterF1, tasbih: '''Subhaan Allahi
Wa Bi Hamdihi''');

msf2(counter) => Cnt(ht: 56, counter: counter, tasbih: '''ASTAGHFIRULLAHAL AZEEM
WA AATUBU ILAIH''');

pT({String panj, counterT}) => Cnt(ht: 72, counter: counterT, tasbih: panj);

pgqA1(counterA1) => Cnt(counter: counterA1, tasbih: 'Subhaan Allah');

pgqA2(counterA2) => Cnt(counter: counterA2, tasbih: 'Al Hamdu Lillah');

pgqA3(counterA3) => Cnt(counter: counterA3, tasbih: 'Allah hu Akbar');

pgqA(counterqA) =>
    Cnt(ht: 72, counter: counterqA, tasbih: '''SUBHAAN ALLAHI WAL HAMDU LILLAHI
WA LA ILAHA ILALLAHU WALLAHU AKBAR
WALA HAWLA WA LA QUWWATA
ILLA BILLAH-AL ALIY-AL-AZEEM''');

pgqB1() => Cnt(counter: 72, tasbih: 'YA BAASITU');

pgqB2({String ganj}) => Cnt(counter: 100, tasbih: ganj);

pgqB3() => Cnt(counter: 100, tasbih: 'YA ALLAH');

pgqB() => Cnt(ht: 72, counter: 11, tasbih: '''ALLAHUMMA SALLE ALA SAYYEDINA
MUHAMMADIN WA ALA AALI SAYYEDINA
MUHAMMADIN WA BAARIK WA SALLIM
SALALLAHU ALAYHE WA SALLAM''');

pWa({String wird}) => Cnt(ht: 52, counter: 100, tasbih: wird);

pS({String sura}) => Cnt(ht: 52, counter: 1, tasbih: sura);

//==========================================================================

class Cnt extends StatefulWidget {
  String tasbih;
  double ht, wt;
  Color coo;
  int counter;

  Cnt({Key key, this.tasbih, this.coo, this.ht, @required this.counter})
      : super(key: key);

  @override
  _CntState createState() => _CntState();
}

class _CntState extends State<Cnt> {
  void iCounter() => setState(() => widget.counter--);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            child: Padding(
                padding: const EdgeInsets.all(3),
                child: RawMaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fillColor: Colors.white,
                    onPressed: iCounter,
                    child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Expanded(
                              child: Container(
                                  height: widget.ht ?? 38,
                                  child: Center(
                                      child: Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: Text(widget.tasbih,
                                              textAlign: TextAlign.center))))),
                          Container(
                              width: 44,
                              height: widget.ht ?? 38,
                              decoration: BoxDecoration(
                                  color: widget.coo ?? Colors.amberAccent[700],
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: 3, color: Colors.white)),
                              child: Center(
                                child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text('${widget.counter}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 14))),
                              )),
                        ]))))));
  }
}
//==========================================================================
