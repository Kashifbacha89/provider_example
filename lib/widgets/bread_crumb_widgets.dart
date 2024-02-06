import 'dart:collection';

import 'package:flutter/material.dart';

import '../helper/bread_crumb.dart';
class BreadCrumbWidget extends StatelessWidget {
  const BreadCrumbWidget({Key? key,required this.breadCrumbs}) : super(key: key);
  final UnmodifiableListView<BreadCrumb> breadCrumbs;

  @override
  Widget build(BuildContext context) {
    return  Wrap(
      children: breadCrumbs.map((breadCrumb) {
        return Text(breadCrumb.title,style: TextStyle(
          color: breadCrumb.isActive?Colors.blue:Colors.black87
        ),);


      }).toList(),
    );
  }
}
