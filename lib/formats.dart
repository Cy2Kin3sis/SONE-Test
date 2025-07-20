import 'package:flutter/material.dart';

const TextStyle textStyle = TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold);

SizedBox sbh(BuildContext context, double pct) => SizedBox(height: MediaQuery.of(context).size.height * (pct / 100));