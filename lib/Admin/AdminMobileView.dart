import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';

import '../MyModel.dart';

class AdminMobileDesign extends StatefulWidget {
  const AdminMobileDesign({super.key});

  @override
  State<AdminMobileDesign> createState() => _AdminMobileDesignState();
}

class _AdminMobileDesignState extends State<AdminMobileDesign> {
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

  var v1 = [0, 0, 0, 0, 0];
  var v2 = [0, 0, 0, 0, 0];
  var v3 = [0, 0, 0, 0, 0];
  var v4 = [0, 0, 0, 0, 0];
  var v5 = [0, 0, 0, 0, 0];
  var v6 = [0, 0, 0, 0, 0];
  var v7 = [0, 0, 0, 0, 0];
  var v8 = [0, 0, 0, 0, 0];
  var v9 = [0, 0, 0, 0, 0];
  var v10 = [0, 0, 0, 0, 0];
  var v11 = [0, 0, 0, 0, 0];
  var v12 = [0, 0, 0, 0, 0];
  var v13 = [0, 0, 0, 0, 0];
  var v14 = [0, 0, 0, 0, 0];
  var v15 = [0, 0, 0, 0, 0];
  var v16 = [0, 0, 0, 0, 0];

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

  Future getCount() async {
    var userCollection = FirebaseFirestore.instance.collection('vote');
    List<MyModel> modelList = [];
    var data = await userCollection.get();
    modelList = await data.docs.map((e) => MyModel.fromJson(e.data())).toList();
    for (int i = 0; i < modelList.length; i++) {
      if (modelList[i].category1 == babr[0]) {
        v1[0] += 1;
      }
      if (modelList[i].category1 == babr[1]) {
        v1[1] += 1;
      }
      if (modelList[i].category1 == babr[2]) {
        v1[2] += 1;
      }
      if (modelList[i].category1 == babr[3]) {
        v1[3] += 1;
      }
      if (modelList[i].category1 == babr[4]) {
        v1[4] += 1;
      }
      //
      if (modelList[i].category2 == cosmetologist[0]) {
        v2[0] += 1;
      }
      if (modelList[i].category2 == cosmetologist[1]) {
        v2[1] += 1;
      }
      if (modelList[i].category2 == cosmetologist[2]) {
        v2[2] += 1;
      }
      if (modelList[i].category2 == cosmetologist[3]) {
        v2[3] += 1;
      }
      if (modelList[i].category2 == cosmetologist[4]) {
        v2[4] += 1;
      }
      //
      if (modelList[i].category2 == caterer[0]) {
        v3[0] += 1;
      }
      if (modelList[i].category2 == caterer[1]) {
        v3[1] += 1;
      }
      if (modelList[i].category2 == caterer[2]) {
        v3[2] += 1;
      }
      if (modelList[i].category2 == caterer[3]) {
        v3[3] += 1;
      }
      if (modelList[i].category2 == caterer[4]) {
        v3[4] += 1;
      }
      //
      if (modelList[i].category2 == cleaning[0]) {
        v4[0] += 1;
      }
      if (modelList[i].category2 == cleaning[1]) {
        v4[1] += 1;
      }
      if (modelList[i].category2 == cleaning[2]) {
        v4[2] += 1;
      }
      if (modelList[i].category2 == cleaning[3]) {
        v4[3] += 1;
      }
      if (modelList[i].category2 == cleaning[4]) {
        v4[4] += 1;
      }
      //
      if (modelList[i].category2 == fashion[0]) {
        v5[0] += 1;
      }
      if (modelList[i].category2 == fashion[1]) {
        v5[1] += 1;
      }
      if (modelList[i].category2 == fashion[2]) {
        v5[2] += 1;
      }
      if (modelList[i].category2 == fashion[3]) {
        v5[3] += 1;
      }
      if (modelList[i].category2 == fashion[4]) {
        v5[4] += 1;
      }
      //
      if (modelList[i].category2 == healthcare[0]) {
        v6[0] += 1;
      }
      if (modelList[i].category2 == healthcare[1]) {
        v6[1] += 1;
      }
      if (modelList[i].category2 == healthcare[2]) {
        v6[2] += 1;
      }
      if (modelList[i].category2 == healthcare[3]) {
        v6[3] += 1;
      }
      if (modelList[i].category2 == healthcare[4]) {
        v6[4] += 1;
      }
      //
      if (modelList[i].category2 == enrichment[0]) {
        v7[0] += 1;
      }
      if (modelList[i].category2 == enrichment[1]) {
        v7[1] += 1;
      }
      if (modelList[i].category2 == enrichment[2]) {
        v7[2] += 1;
      }
      if (modelList[i].category2 == enrichment[3]) {
        v7[3] += 1;
      }
      if (modelList[i].category2 == enrichment[4]) {
        v7[4] += 1;
      }
      //
      if (modelList[i].category2 == humanitarian[0]) {
        v8[0] += 1;
      }
      if (modelList[i].category2 == humanitarian[1]) {
        v8[1] += 1;
      }
      if (modelList[i].category2 == humanitarian[2]) {
        v8[2] += 1;
      }
      if (modelList[i].category2 == humanitarian[3]) {
        v8[3] += 1;
      }
      if (modelList[i].category2 == humanitarian[4]) {
        v8[4] += 1;
      }
      //
      if (modelList[i].category2 == lifetime[0]) {
        v9[0] += 1;
      }
      if (modelList[i].category2 == lifetime[1]) {
        v9[1] += 1;
      }
      if (modelList[i].category2 == lifetime[2]) {
        v9[2] += 1;
      }
      if (modelList[i].category2 == lifetime[3]) {
        v9[3] += 1;
      }
      if (modelList[i].category2 == lifetime[4]) {
        v9[4] += 1;
      }
      //
      if (modelList[i].category2 == graphic[0]) {
        v10[0] += 1;
      }
      if (modelList[i].category2 == graphic[1]) {
        v10[1] += 1;
      }
      if (modelList[i].category2 == graphic[2]) {
        v10[2] += 1;
      }
      if (modelList[i].category2 == graphic[3]) {
        v10[3] += 1;
      }
      if (modelList[i].category2 == graphic[4]) {
        v10[4] += 1;
      }
      //
      if (modelList[i].category2 == photography[0]) {
        v11[0] += 1;
      }
      if (modelList[i].category2 == photography[1]) {
        v11[1] += 1;
      }
      if (modelList[i].category2 == photography[2]) {
        v11[2] += 1;
      }
      if (modelList[i].category2 == photography[3]) {
        v11[3] += 1;
      }
      if (modelList[i].category2 == photography[4]) {
        v11[4] += 1;
      }
      //
      if (modelList[i].category2 == realtor[0]) {
        v12[0] += 1;
      }
      if (modelList[i].category2 == realtor[1]) {
        v12[1] += 1;
      }
      if (modelList[i].category2 == realtor[2]) {
        v12[2] += 1;
      }
      if (modelList[i].category2 == realtor[3]) {
        v12[3] += 1;
      }
      if (modelList[i].category2 == realtor[4]) {
        v12[4] += 1;
      }
      //
      if (modelList[i].category2 == lender[0]) {
        v13[0] += 1;
      }
      if (modelList[i].category2 == lender[1]) {
        v13[1] += 1;
      }
      if (modelList[i].category2 == lender[2]) {
        v13[2] += 1;
      }
      if (modelList[i].category2 == lender[3]) {
        v13[3] += 1;
      }
      if (modelList[i].category2 == lender[4]) {
        v13[4] += 1;
      }
      //
      if (modelList[i].category2 == mUA[0]) {
        v14[0] += 1;
      }
      if (modelList[i].category2 == mUA[1]) {
        v14[1] += 1;
      }
      if (modelList[i].category2 == mUA[2]) {
        v14[2] += 1;
      }
      if (modelList[i].category2 == mUA[3]) {
        v14[3] += 1;
      }
      if (modelList[i].category2 == mUA[4]) {
        v14[4] += 1;
      }
      //
      if (modelList[i].category2 == rising[0]) {
        v15[0] += 1;
      }
      if (modelList[i].category2 == rising[1]) {
        v15[1] += 1;
      }
      if (modelList[i].category2 == rising[2]) {
        v15[2] += 1;
      }
      if (modelList[i].category2 == rising[3]) {
        v15[3] += 1;
      }
      if (modelList[i].category2 == rising[4]) {
        v15[4] += 1;
      }
      //
      if (modelList[i].category2 == videographer[0]) {
        v16[0] += 1;
      }
      if (modelList[i].category2 == videographer[1]) {
        v16[1] += 1;
      }
      if (modelList[i].category2 == videographer[2]) {
        v16[2] += 1;
      }
      if (modelList[i].category2 == videographer[3]) {
        v16[3] += 1;
      }
      if (modelList[i].category2 == videographer[4]) {
        v16[4] += 1;
      }
    }
    setState(() {});
  }

  bool isLoading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCount().whenComplete(() {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            )
          : SingleChildScrollView(
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
                  Row(
                    children: [
                      Text(
                        lst[0],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    babr[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v1[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                  //
                  ,
                  Row(
                    children: [
                      Text(
                        lst[1],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    cosmetologist[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v2[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[2],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    caterer[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v3[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[3],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    cleaning[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v4[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[4],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    fashion[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v5[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[5],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    healthcare[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v6[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[6],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    enrichment[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v7[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[7],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    humanitarian[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v8[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[8],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    lifetime[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v9[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[9],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    graphic[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v10[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[10],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    photography[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v11[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[11],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    realtor[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v12[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[12],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    lender[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v13[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[13],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    mUA[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v14[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[14],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    rising[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v15[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                  Row(
                    children: [
                      Text(
                        lst[15],
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (contxt, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 50,
                            margin: EdgeInsets.only(right: 20),
                            child: Center(
                              child: Row(
                                children: [
                                  Text(
                                    videographer[index],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '${v15[index]}',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  //
                ],
              ),
            ),
    );
  }
}
