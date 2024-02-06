import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/controllers/bread_crum_provider.dart';
import 'package:provider_example/widgets/bread_crumb_widgets.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                builder: (context,breadCrumbProvider,child){
                  return BreadCrumbWidget(breadCrumbs: breadCrumbProvider.items);
                }),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue.shade400
              ),
                onPressed: (){
                Navigator.pushNamed(context, '/new');
                }, child: const Text('Add new bread crumb ',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),)),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade400
                ),
                onPressed: (){
                 context.read<BreadCrumbProvider>().reset();
                }, child: const Text('Reset ',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),))

          ],
        ),
      ),
    );
  }
}
