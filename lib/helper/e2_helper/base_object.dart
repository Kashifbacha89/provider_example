import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';


class BaseObject{
  final String? id;
  final String? lastUpdated;

  BaseObject():id=const Uuid().v4(),
  lastUpdated=DateTime.now().toIso8601String();

  @override
  bool operator ==(covariant BaseObject other) =>id==other.id;

  @override
  // TODO: implement hashCode
  int get hashCode => id.hashCode;

}
class ExpansiveObject extends BaseObject{

}
class CheapObject extends BaseObject{

}