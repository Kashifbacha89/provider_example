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
      height: 120,
      color: Colors.redAccent.shade100,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            const Text('Expansive Widget'),
            const Text('Last Updated'),
            const SizedBox(height: 10,),
            Text(expansiveObject.lastUpdated!.toString(),style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
