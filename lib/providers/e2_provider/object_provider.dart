import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:provider_example/helper/e2_helper/base_object.dart';

class ObjectProvider extends ChangeNotifier{
  late String id;
  late CheapObject _cheapObject;
  late StreamSubscription _cheapObjectStreamSubs;
  late ExpansiveObject _expansiveObject;
  late StreamSubscription _expansiveObjectStreamSubs;
//getter for these methods
CheapObject get cheapObject => _cheapObject;
ExpansiveObject get expansiveObject => _expansiveObject;
void start(){
  _cheapObjectStreamSubs =Stream.periodic(const Duration(seconds: 1),).listen((_) {
    _cheapObject=CheapObject();
    notifyListeners();

  });
  _expansiveObjectStreamSubs =Stream.periodic(const Duration(seconds: 10),).listen((_) {
    _expansiveObject=ExpansiveObject();
    notifyListeners();

  });

}
void stop(){
  _cheapObjectStreamSubs.cancel();
  _expansiveObjectStreamSubs.cancel();
}
}