/// formats.dart
///
/// This file contains reusable formats.
library;

import 'package:flutter/material.dart';

const TextStyle textStyle = TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold);

const Color white = Colors.white;

SizedBox sbhf(double height) => SizedBox(height: height);

SizedBox sbwf(double width) => SizedBox(width: width);

SizedBox sbhc(BuildContext context, double pct) => SizedBox(height: MediaQuery.of(context).size.height * (pct / 100));

SizedBox sbwc(BuildContext context, double pct) => SizedBox(height: MediaQuery.of(context).size.height * (pct / 100));