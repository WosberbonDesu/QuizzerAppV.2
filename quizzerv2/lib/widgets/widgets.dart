import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 22,
      ),
      children: <TextSpan>[
        TextSpan(
            text: '                       QuiZ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            )),
        TextSpan(
            text: 'Zer',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey.shade900,
            )),
      ],
    ),
  );
}

Widget blueButton(BuildContext context, String label) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: Colors.blueAccent,
    ),
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width - 40,
    child: Text(
      label,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    ),
  );
}
Widget sss(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 22,
      ),
      children: <TextSpan>[
        TextSpan(
            text: '             QuiZ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            )),
        TextSpan(
            text: 'Zer',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey.shade900,
            )),
      ],
    ),
  );
}

Widget markov({BuildContext context, String label, buttonWidth}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      color: Colors.blueAccent,
    ),
    alignment: Alignment.center,
    width: buttonWidth != null ? buttonWidth : MediaQuery.of(context).size.width - 40,
    child: Text(
      label,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    ),
  );
}


Widget aaa(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 22,
      ),
      children: <TextSpan>[
        TextSpan(
            text: '  QuiZ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            )),
        TextSpan(
            text: 'Zer',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey.shade900,
            )),
      ],
    ),
  );
}