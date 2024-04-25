import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CashbackView extends GetView {
  final String url;
  final String title;
  final String desc;
  const CashbackView(
      {Key? key, required this.url, required this.title, required this.desc})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double sWidth = screenSize.width;
    return Column(
      children: [
        Container(
          width: sWidth * 0.3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(image: NetworkImage(url)),
          ),
        ),
        Text(title),
        Text(
          desc,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
