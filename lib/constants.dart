import 'package:flutter/material.dart';

final HintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

final LabelStyle = const TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final boxie = BoxDecoration(
  color: const Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(20.0),
  boxShadow: const [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
