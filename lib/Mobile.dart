import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';
import 'package:voter_form/MyModel.dart';

class DropdownList extends StatefulWidget {
  final List<String> items;
  String initialValue;
  TextEditingController controller;

  DropdownList({required this.items, required this.initialValue, required this.controller});

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton<String>(
          value: widget.initialValue,
          onChanged: (newValue) {
            setState(() {
              widget.initialValue = newValue!;
              widget.controller.text = newValue;
            });
          },
          isExpanded: true,
          underline: const SizedBox(),
          items: widget.items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  String dropdownValue1 = 'Select';
  String dropdownValue2 = 'Select';
  String dropdownValue3 = 'Select';
  String dropdownValue4 = 'Select';
  String dropdownValue5 = 'Select';
  String dropdownValue6 = 'Select';
  String dropdownValue7 = 'Select';
  String dropdownValue8 = 'Select';
  String dropdownValue9 = 'Select';
  String dropdownValue10 = 'Select';
  String dropdownValue11 = 'Select';
  String dropdownValue12 = 'Select';
  String dropdownValue13 = 'Select';
  String dropdownValue14 = 'Select';
  String dropdownValue15 = 'Select';
  String dropdownValue16 = 'Select';

  var babr = [
    'Select',
    'Kwadetrius Smith (Krisp Kutz by Lamar)',
    'Lataria "Tbird Cutz" Wallace',
    'Terry Lewis',
    'Carlos Miller',
    'Xavier Graham "X"',
  ];
  var cosmetologist = [
    'Select',
    'Jahkiyah Smith',
    'Keann Young',
    'Stephanie Patterson',
    'Santia Pace',
    'Okimea Luckey',
  ];
  var caterer = [
    'Select',
    'Virtuous Hustle',
    'Southern Yankee Queen',
    'From the Crown Catering',
    'Fa Show Catering',
    'Family Tys',
  ];
  var cleaning = [
    'Select',
    'Truly Motivated "TMC"',
    'Pink Lemonade LLC',
    'Thompson Family Services',
    'Southern Bubbles',
    'Alehondrea Watkins',
  ];
  var fashion = [
    'Select',
    'Charles Gibson',
    'Zadres Tate',
    'Victoria Baldwin',
    'Audrey Allen',
    'Nester Taylor',
    'Yada Khoom',
  ];
  var healthcare = [
    'Select',
    'Dr. Kameko McGuire',
    'Gabrielle Crenshaw',
    'Gigi Love & Care Services',
    'Felicia Allen',
    'Dr. M. Grier Hall',
  ];
  var enrichment = [
    'Select',
    'Personalized Learning Kingdom Academy',
    'John McCorvey',
    'Lasha Douville',
    'Felicia Scaife',
    'Xavier Williams',
  ];
  var humanitarian = [
    'Select',
    'Keithina Nicole Dixon',
    'Hale Morrissette',
    'Tara Lewis',
    'Governor Williams',
    'Caleb Houston',
  ];
  var lifetime = [
    'Select',
    'Robin Reshard',
    'Sue Straughn',
    'Antonio Royster',
    'Keithina Nicole Dixon',
    'Aaron Watson',
  ];
  var graphic = [
    'Select',
    'Vadre Shae',
    'Ronald Franklin',
    'James Stokes',
    'Hazel Powell',
    'Exquisite Touch Designs',
  ];
  var photography = [
    'Select',
    'Ronald Franklin',
    'Gigi Ceus',
    'Raven Crosby',
    'Bryan Luckey',
    'Sean Vincent',
  ];
  var realtor = [
    'Select',
    'Roshana Remo',
    'Dederek Teate',
    'Dee Wilson',
    'Willie Demps',
    'Atiya Blackwell',
  ];
  var lender = [
    'Select',
    'Felicia Scaife',
    'Kim Moore',
    'Patrice Bobo Miles',
    'Allison Fingall',
    'Terrance Barber',
  ];
  var mUA = [
    'Select',
    'Tempest Knox',
    'Beauty by Alexis',
    'Jaris Harrison',
    'Shanquansia Love',
    'Niea Lewis',
    'Ashley Colley',
  ];
  var rising = [
    'Select',
    'I Am Money Apparel (Terrance Smith)',
    'Taki Brown',
    'Boundless Divine Naturals',
    'Benjamin Petrose',
    'Ny Chi',
    'Kelsey Coffey',
  ];
  var videographer = [
    'Select',
    'Ke\'Andre Beasley',
    'Ronald Franklin',
    'Global Films',
    'Benjamin Trey Petrose',
    'Andrea Adams',
  ];

  var lst = [
    'Barber',
    'Cosmetologist',
    'Caterer',
    'Cleaning Company',
    'Fashion Designer',
    'Healthcare Professional',
    'Enrichment & Empowerment',
    'Humanitarian',
    'Lifetime Achievement',
    'Graphic Design',
    'Photography',
    'Realtor',
    'Lender',
    'MUA',
    'Rising Star',
    'Videographer',
  ];

  var d1 = TextEditingController();
  var d2 = TextEditingController();
  var d3 = TextEditingController();
  var d4 = TextEditingController();
  var d5 = TextEditingController();
  var d6 = TextEditingController();
  var d7 = TextEditingController();
  var d8 = TextEditingController();
  var d9 = TextEditingController();
  var d10 = TextEditingController();
  var d11 = TextEditingController();
  var d12 = TextEditingController();
  var d13 = TextEditingController();
  var d14 = TextEditingController();
  var d15 = TextEditingController();
  var d16 = TextEditingController();

  var deviceIp;
  var userCollection = FirebaseFirestore.instance.collection('vote');
  var hoursLeft;
  Future<bool> checkAlreadySubmitToday(ip) async {
    List<MyModel> lst = [];
    var data = await userCollection.where('user', isEqualTo: '$ip').get();
    lst = await data.docs.map((e) => MyModel.fromJson(e.data())).toList();
    if (lst.isEmpty) {
      return true;
    } else {
      lst.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      Timestamp firestoreTimestamp = lst[0].createdAt;
      DateTime dateTime = firestoreTimestamp.toDate();
      hoursLeft = DateTime.now().difference(dateTime).inHours;
      setState(() {});
      if (DateTime.now().difference(dateTime).inHours >= 24) {
        return true;
      } else {
        return false;
      }
    }
  }

  submitBtnClick() async {
    try {
      var userCollection = FirebaseFirestore.instance.collection('vote');
      var uid = userCollection.doc().id;
      deviceIp = await Ipify.ipv64();
      setState(() {});
      bool flag = await checkAlreadySubmitToday(deviceIp.toString().split('.')[1] + deviceIp.toString().split('.')[0]);
      if (flag) {
        Map<String, dynamic> data = {
          'user': '${deviceIp.toString().split('.')[1] + deviceIp.toString().split('.')[0]}',
          'category1': d1.text,
          'category2': d2.text,
          'category3': d3.text,
          'category4': d4.text,
          'category5': d5.text,
          'category6': d6.text,
          'category7': d7.text,
          'category8': d8.text,
          'category9': d9.text,
          'category10': d10.text,
          'category11': d11.text,
          'category12': d12.text,
          'category13': d13.text,
          'category14': d14.text,
          'category15': d15.text,
          'category16': d16.text,
          'createdAt': DateTime.now(),
          'uid': uid,
        };

        await FirebaseFirestore.instance.collection('vote').doc(uid).set(data).then((value) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Your vote has been added'),
            ),
          );
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Not Allowed,will allow after $hoursLeft hours!'),
          ),
        );
      }
      Navigator.pop(context);
    } catch (e) {
      print('Error $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: Colors.black,
              margin: const EdgeInsets.only(bottom: 50),
              height: MediaQuery.of(context).size.height * 0.4,
              child: Center(
                child: Image.asset('images/logo.jpeg'),
              ),
            ),
            Column(
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[0]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: babr,
                          controller: d1,
                          initialValue: dropdownValue1,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[1]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: cosmetologist,
                          controller: d2,
                          initialValue: dropdownValue2,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[2]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: caterer,
                          controller: d3,
                          initialValue: dropdownValue3,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[3]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: cleaning,
                          controller: d4,
                          initialValue: dropdownValue4,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[4]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          controller: d5,
                          items: fashion,
                          initialValue: dropdownValue5,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[5]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: healthcare,
                          controller: d6,
                          initialValue: dropdownValue6,
                        ),
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[6]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: enrichment,
                          controller: d7,
                          initialValue: dropdownValue7,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[7]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: humanitarian,
                          controller: d8,
                          initialValue: dropdownValue8,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[8]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: lifetime,
                          controller: d9,
                          initialValue: dropdownValue9,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[9]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: graphic,
                          controller: d10,
                          initialValue: dropdownValue10,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[10]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: photography,
                          controller: d11,
                          initialValue: dropdownValue11,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[11]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: realtor,
                          controller: d12,
                          initialValue: dropdownValue12,
                        ),
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[12]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: lender,
                          controller: d13,
                          initialValue: dropdownValue13,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[13]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: mUA,
                          controller: d14,
                          initialValue: dropdownValue14,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[14]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: rising,
                          controller: d15,
                          initialValue: dropdownValue15,
                        ),
                      ],
                    )),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(lst[15]),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DropdownList(
                          items: videographer,
                          controller: d16,
                          initialValue: dropdownValue16,
                        ),
                      ],
                    )),
                SizedBox(
                  width: double.infinity,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => const Center(
                          child: CircularProgressIndicator(),
                        ));
                submitBtnClick();
              },
              child: Container(
                width: double.infinity,
                height: 50,
                color: Colors.black,
                child: Center(
                  child: Text(
                    'Submit'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
