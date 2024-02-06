import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../helper/e2_helper/base_object.dart';
import '../../../providers/e2_provider/object_provider.dart';
class ExpansiveWidget extends StatelessWidget {
  const ExpansiveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final expansiveObject=context.select<ObjectProvider,ExpansiveObject>((provider)=>provider.expansiveObject,);
    return  Container(
      height: 100,
      color: Colors.blue,
      child: Column(
        children: [
          const Text('Expansive Widget'),
          const Text('Last Updated'),
          Text(expansiveObject.lastUpdated!.toString()),
        ],
      ),
    );
  }
}
