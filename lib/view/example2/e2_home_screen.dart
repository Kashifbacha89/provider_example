import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/e2_provider/object_provider.dart';
import 'package:provider_example/view/example2/widgets/cheap_widget.dart';
import 'package:provider_example/view/example2/widgets/expansive_widget.dart';
import 'package:provider_example/view/example2/widgets/object_provider_widget.dart';
class E2HomeScreen extends StatelessWidget {
  const E2HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example2 Home screen'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      body:  Column(
        children:  [
          const Row(
            children: [
              Expanded(child: CheapWidget()),
              Expanded(child: ExpansiveWidget()),
            ],
          ),
          const Row(
            children: [
              Expanded(child: ObjectProviderWidget()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)
                    )
                  ),
                  onPressed: (){
                    context.read<ObjectProvider>().stop();
                  },
                  child: const Text('STOP',style: TextStyle(color: Colors.white),)),
              const SizedBox(width: 30,),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black54,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                      )
                  ),
                  onPressed: (){
                    context.read<ObjectProvider>().start();
                  },
                  child: const Text('START',style: TextStyle(color: Colors.white),))
            ],
          ),


        ],
      ),
    );
  }
}
