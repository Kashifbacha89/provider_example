import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

import '../helper/bread_crumb.dart';
class BreadCrumbProvider extends ChangeNotifier{
  final List<BreadCrumb> _items=[];
  UnmodifiableListView<BreadCrumb> get items=> UnmodifiableListView(_items);
  void add(BreadCrumb breadCrumb){
    for(final item in _items){
      item.activate();
    }
    _items.add(breadCrumb);
    notifyListeners();
  }
  void reset(){
    _items.clear();
    notifyListeners();
  }


}