import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/controllers/bread_crum_provider.dart';
import 'package:provider_example/helper/bread_crumb.dart';
class AddNewBreadCrumbScreen extends StatefulWidget {
  const AddNewBreadCrumbScreen({Key? key}) : super(key: key);

  @override
  State<AddNewBreadCrumbScreen> createState() => _AddNewBreadCrumbScreenState();
}

class _AddNewBreadCrumbScreenState extends State<AddNewBreadCrumbScreen> {
  late final TextEditingController _controller;
  @override
  void initState() {

    _controller=TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new breadCrumb'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      body:  Padding(
        padding:  const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter a New Bread crumb here ....',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    )
                  ),
                  onPressed: (){
                    final text=_controller.text;
                    if(text.isNotEmpty){
                      final breadCrumb=BreadCrumb(isActive: false, name: text);
                      context.read<BreadCrumbProvider>().add(breadCrumb);
                      Navigator.of(context).pop();

                    }
                  },
                  child: const Text('add')),


            ],
          ),
        ),
      ),
    );
  }
}
