import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/view/example1/widgets/bread_crumb_widgets.dart';

import '../../providers/bread_crum_provider.dart';

class Example1HomeScreen extends StatefulWidget {
  const Example1HomeScreen({Key? key}) : super(key: key);

  @override
  State<Example1HomeScreen> createState() => _Example1HomeScreenState();
}

class _Example1HomeScreenState extends State<Example1HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Consumer<BreadCrumbProvider>(
                builder: (context, breadCrumbProvider, child) {
              return BreadCrumbWidget(breadCrumbs: breadCrumbProvider.items);
            }),
            TextButton(
                style:
                    TextButton.styleFrom(backgroundColor: Colors.blue.shade400),
                onPressed: () {
                  Navigator.pushNamed(context, '/new');
                },
                child: const Text(
                  'Add new bread crumb ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                )),
            TextButton(
                style:
                    TextButton.styleFrom(backgroundColor: Colors.blue.shade400),
                onPressed: () {
                  context.read<BreadCrumbProvider>().reset();
                },
                child: const Text(
                  'Reset ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                )),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/example2');
              },
              child: Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue.shade500,
                ),
                child: const Center(child: Text('Check Example 2',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
