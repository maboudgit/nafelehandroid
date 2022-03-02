import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final hoursitems = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24"
  ];

  final minsitems = [
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    "60"
  ];

  String? hoursvalueg;
  String? hoursvaluet;

  String? minsvalueg;
  String? minsvaluet;

  var hourg;
  var hourt;
  var ming;
  var mint;

  var fullhour = 24;
  var lenhour;
  var lenfullhours;

  var hourtomin;
  var resultmin;

  var tm_hesab1;
  var tm_hesab2;

  var area1;
  var area2;

  var toint1;
  var toint2;

  var tmr1;
  var tmr2;

  var res_min1;
  var res_min2;

  var houradd1;
  var houradd2;

  var minadd1;
  var minadd2;

  var resh1;
  var resh2;

  var resulth1;
  var resultm1;

  var resulth2;
  var resultm2;

  var finalhour1;
  var finalmin1;
  var finalhour2;
  var finalmin2;

  var strtime1;
  var strtime2;

  void getDropDownItem() {
    setState(() {
      hourg = int.parse(hoursvalueg!);
      hourt = int.parse(hoursvaluet!);
      ming = int.parse(minsvalueg!);
      mint = int.parse(minsvaluet!);

      lenhour = fullhour - hourg;
      lenfullhours = lenhour + hourt;

      hourtomin = lenfullhours * 60;
      resultmin = (hourtomin - ming) + mint;

      tm_hesab1 = (resultmin * (18 / 24)).round();
      tm_hesab2 = (resultmin * (19 / 24)).round();

      area1 = (tm_hesab1 / 60);
      area2 = (tm_hesab2 / 60);

      toint1 = area1.toInt();
      toint2 = area2.toInt();

      tmr1 = area1 - toint1;
      tmr2 = area2 - toint2;

      res_min1 = (tmr1 * 60).round();
      res_min2 = (tmr2 * 60).round();

      houradd1 = toint1 + hourg;
      houradd2 = toint2 + hourg;

      minadd1 = ming + res_min1;
      minadd2 = ming + res_min2;

      if (houradd1 > 24 && houradd2 > 24) {
        resh1 = houradd1 - 24;
        resh2 = houradd2 - 24;
      }
      if (minadd1 < 60) {
        resulth1 = resh1;
        resultm1 = minadd1;

        strtime1 = '$resulth1' + ':' + '$resultm1';
      } else if (minadd1 >= 60) {
        var minarea1 = minadd1 / 60;
        var tointmin1 = minarea1.toInt();
        var hourinmin1 = minarea1 - tointmin1;
        finalmin1 = (hourinmin1 * 60).round();
        finalhour1 = resh1 + tointmin1;
        strtime1 = '$finalhour1' + ':' + '$finalmin1';
      }
      if (minadd2 < 60) {
        resulth2 = resh2;
        resultm2 = minadd2;

        strtime2 = '$resulth2' + ':' + '$resultm2';
      } else if (minadd2 >= 60) {
        var minarea2 = minadd2 / 60;
        var tointmin2 = minarea2.toInt();
        var hourinmin2 = minarea2 - tointmin2;
        finalmin2 = (hourinmin2 * 60).round();
        finalhour2 = resh2 + tointmin2;
        strtime2 = '$finalhour2' + ':' + '$finalmin2';
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'نافله شب',
            textDirection: TextDirection.rtl,
          ),
        ),
        endDrawer: Drawer(
          elevation: 16.0,
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("نافله شب "),
                accountEmail: Text("تخمین زمان عبادت سحر"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image.asset('assets/images/nafeleh.png'),
                ),
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: new Text(
                    "برنامه نویس : عبدالمعبود عبادی زاده",
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  leading: new Icon(Icons.account_circle),
                ),
              ),
              Divider(
                height: 0.1,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  title: new Text(
                    "منجم : محسن اختری",
                    style:
                        TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                  ),
                  leading: new Icon(Icons.account_circle),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(height: 10),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    "تخمین زمان عبادت سحر",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(height: 10),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: 110,
                    height: 40,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.brown, width: 4),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text("ساعت"),
                        value: hoursvalueg,
                        iconSize: 36,
                        icon: Icon(Icons.arrow_drop_down, color: Colors.brown),
                        isExpanded: true,
                        items: hoursitems.map(buildMenuItem).toList(),
                        onChanged: (value) =>
                            setState(() => this.hoursvalueg = value),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    child: Text(
                      "ساعت غروب امروز",
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: 110,
                    height: 40,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.brown, width: 4),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text("دقیقه"),
                        value: minsvalueg,
                        iconSize: 36,
                        icon: Icon(Icons.arrow_drop_down, color: Colors.brown),
                        isExpanded: true,
                        items: minsitems.map(buildMenuItem).toList(),
                        onChanged: (value) =>
                            setState(() => this.minsvalueg = value),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    child: Text(
                      "دقیقه غروب امروز",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: 110,
                    height: 40,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.brown, width: 4),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text("ساعت"),
                        value: hoursvaluet,
                        iconSize: 36,
                        icon: Icon(Icons.arrow_drop_down, color: Colors.brown),
                        isExpanded: true,
                        items: hoursitems.map(buildMenuItem).toList(),
                        onChanged: (value) =>
                            setState(() => this.hoursvaluet = value),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    child: Text(
                      "ساعت طلوع فردا",
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    width: 110,
                    height: 40,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.brown, width: 4),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        hint: Text("دقیقه"),
                        value: minsvaluet,
                        iconSize: 36,
                        icon: Icon(Icons.arrow_drop_down, color: Colors.brown),
                        isExpanded: true,
                        items: minsitems.map(buildMenuItem).toList(),
                        onChanged: (value) =>
                            setState(() => this.minsvaluet = value),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    child: Text(
                      "دقیقه طلوع فردا",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(height: 10),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      textStyle: TextStyle(fontSize: 28),
                    ),
                    child: Text(
                      'محاسبه بازه زمان',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    onPressed: getDropDownItem,
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(height: 50),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Container(
                    child: Text(
                      "زمان پایان",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Container(
                    child: Text(
                      "زمان شروع",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(height: 10),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Container(
                    child: Text(
                      strtime2 ?? "00:00",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                  child: Container(
                    child: Text(
                      "تا",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Container(
                    child: Text(
                      strtime1 ?? "00:00",
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      );
}
