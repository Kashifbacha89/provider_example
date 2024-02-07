import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/helper/e2_helper/base_object.dart';

import '../../../providers/e2_provider/object_provider.dart';
class CheapWidget extends StatelessWidget {
  const CheapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cheapObject=context.select<ObjectProvider,CheapObject>((provider)=>provider.cheapObject,);
    return Container(
      height: 120,
      color: Colors.yellow.shade500,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            const Text('Cheap Widget'),
            const Text('Last Update'),
            const SizedBox(height: 10,),
            Text(cheapObject.lastUpdated!.toString(),style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600),)
          ],
        ),
      ),
    );
  }
}
