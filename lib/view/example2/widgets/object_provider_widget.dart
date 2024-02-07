import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/e2_provider/object_provider.dart';
class ObjectProviderWidget extends StatelessWidget {
  const ObjectProviderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=context.watch<ObjectProvider>();
    return  Container(
      height: 120,
      color: Colors.green.shade300,
      child: Column(
        children: [
          const Text('Object Provider Widget'),
          const Text('ID'),
          Text(provider.id),
        ],
      ),
    );
  }
}
