import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';

import 'MyModel.dart';

class DropdownList extends StatefulWidget {
  final List<String> items;
  var initialValue;
  var gval;
  TextEditingController controller;

  DropdownList({required this.items, required this.initialValue, required this.controller, this.gval});

  @override
  State<DropdownList> createState() => _DropdownListState();
}

class _DropdownListState extends State<DropdownList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              height: 50,
              child: RadioListTile(
                value: widget.initialValue[index],
                groupValue: widget.gval,
                onChanged: (value) {
                  setState(() {
                    widget.gval = value!;
                  });
                  widget.controller.text = widget.items[index];
                },
                title: Text(widget.items[index]),
              ),
            );
          }),
    );
  }
}

class WebDesign extends StatefulWidget {
  const WebDesign({super.key});

  @override
  State<WebDesign> createState() => _WebDesignState();
}

class _WebDesignState extends State<WebDesign> {
  var dropdownValue1 = [0, 1, 2, 3, 4];
  var dropdownValue2 = [5, 6, 7, 8, 9];
  var dropdownValue3 = [10, 11, 12, 13, 14];
  var dropdownValue4 = [15, 16, 17, 18, 19];
  var dropdownValue5 = [20, 21, 22, 23, 24];
  var dropdownValue6 = [25, 26, 27, 28, 29];
  var dropdownValue7 = [30, 31, 32, 33, 34];
  var dropdownValue8 = [35, 36, 37, 38, 39];
  var dropdownValue9 = [40, 41, 42, 43, 44];
  var dropdownValue10 = [45, 46, 47, 48, 49];
  var dropdownValue11 = [50, 51, 52, 53, 54];
  var dropdownValue12 = [55, 56, 57, 58, 59];
  var dropdownValue13 = [60, 61, 62, 63, 64];
  var dropdownValue14 = [65, 66, 67, 68, 69];
  var dropdownValue15 = [70, 71, 72, 73, 74];
  var dropdownValue16 = [75, 76, 77, 78, 79];

  var babr = [
    'Kwadetrius Smith (Krisp Kutz by Lamar)',
    'Lataria "Tbird Cutz" Wallace',
    'Terry Lewis',
    'Carlos Miller',
    'Xavier Graham "X"',
  ];
  var cosmetologist = [
    'Jahkiyah Smith',
    'Keann Young',
    'Stephanie Patterson',
    'Santia Pace',
    'Okimea Luckey',
  ];
  var caterer = [
    'Virtuous Hustle',
    'Southern Yankee Queen',
    'From the Crown Catering',
    'Fa Show Catering',
    'Family Tys',
  ];
  var cleaning = [
    'Truly Motivated "TMC"',
    'Pink Lemonade LLC',
    'Thompson Family Services',
    'Southern Bubbles',
    'Alehondrea Watkins',
  ];
  var fashion = [
    'Charles Gibson',
    'Zadres Tate',
    'Victoria Baldwin',
    'Audrey Allen',
    'Nester Taylor',
    'Yada Khoom',
  ];
  var healthcare = [
    'Dr. Kameko McGuire',
    'Gabrielle Crenshaw',
    'Gigi Love & Care Services',
    'Felicia Allen',
    'Dr. M. Grier Hall',
  ];
  var enrichment = [
    'Personalized Learning Kingdom Academy',
    'John McCorvey',
    'Lasha Douville',
    'Felicia Scaife',
    'Xavier Williams',
  ];
  var humanitarian = [
    'Keithina Nicole Dixon',
    'Hale Morrissette',
    'Tara Lewis',
    'Governor Williams',
    'Caleb Houston',
  ];
  var lifetime = [
    'Robin Reshard',
    'Sue Straughn',
    'Antonio Royster',
    'Keithina Nicole Dixon',
    'Aaron Watson',
  ];
  var graphic = [
    'Vadre Shae',
    'Ronald Franklin',
    'James Stokes',
    'Hazel Powell',
    'Exquisite Touch Designs',
  ];
  var photography = [
    'Ronald Franklin',
    'Gigi Ceus',
    'Raven Crosby',
    'Bryan Luckey',
    'Sean Vincent',
  ];
  var realtor = [
    'Roshana Remo',
    'Dederek Teate',
    'Dee Wilson',
    'Willie Demps',
    'Atiya Blackwell',
  ];
  var lender = [
    'Felicia Scaife',
    'Kim Moore',
    'Patrice Bobo Miles',
    'Allison Fingall',
    'Terrance Barber',
  ];
  var mUA = [
    'Tempest Knox',
    'Beauty by Alexis',
    'Jaris Harrison',
    'Shanquansia Love',
    'Niea Lewis',
    'Ashley Colley',
  ];
  var rising = [
    'I Am Money Apparel (Terrance Smith)',
    'Taki Brown',
    'Boundless Divine Naturals',
    'Benjamin Petrose',
    'Ny Chi',
    'Kelsey Coffey',
  ];
  var videographer = [
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

  int g1 = -1;
  int g2 = -1;
  int g3 = -1;
  int g4 = -1;
  int g5 = -1;
  int g6 = -1;
  int g7 = -1;
  int g8 = -1;
  int g9 = -1;
  int g10 = -1;
  int g11 = -1;
  int g12 = -1;
  int g13 = -1;
  int g14 = -1;
  int g15 = -1;
  int g16 = -1;

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
      hoursLeft = dateTime.add(Duration(days: 1)).difference(DateTime.now()).inHours;
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
              margin: const EdgeInsets.only(bottom: 20),
              height: MediaQuery.of(context).size.height * 0.4,
              child: Center(
                child: Image.asset('images/logo.jpeg'),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                      height: 100,
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
                            gval: g1,
                            initialValue: dropdownValue1,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g2,
                            initialValue: dropdownValue2,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g3,
                            controller: d3,
                            initialValue: dropdownValue3,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g4,
                            initialValue: dropdownValue4,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g5,
                            initialValue: dropdownValue5,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g6,
                            initialValue: dropdownValue6,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g7,
                            initialValue: dropdownValue7,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g8,
                            initialValue: dropdownValue8,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g9,
                            initialValue: dropdownValue9,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g10,
                            initialValue: dropdownValue10,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g11,
                            initialValue: dropdownValue11,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g12,
                            initialValue: dropdownValue12,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g13,
                            initialValue: dropdownValue13,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g14,
                            initialValue: dropdownValue14,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g15,
                            initialValue: dropdownValue15,
                          ),
                        ],
                      )),
                  SizedBox(
                      height: 100,
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
                            gval: g16,
                            initialValue: dropdownValue16,
                          ),
                        ],
                      )),
                ],
              ),
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
                width: 200,
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
