import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/material.dart';

import '../MyModel.dart';

class AdminWebDesign extends StatefulWidget {
  const AdminWebDesign({super.key});

  @override
  State<AdminWebDesign> createState() => _AdminWebDesignState();
}

class _AdminWebDesignState extends State<AdminWebDesign> {
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
          ],
        ),
      ),
    );
  }
}
