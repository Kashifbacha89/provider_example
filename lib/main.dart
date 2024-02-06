import 'package:flutter/material.dart';
import 'package:provider_example/providers/bread_crum_provider.dart';
import 'package:provider_example/providers/e2_provider/object_provider.dart';
import 'package:provider_example/view/example1/add_new_bread_crumb_screen.dart';
import 'package:provider_example/view/example1/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/view/example2/e2_home_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => BreadCrumbProvider()),
    ChangeNotifierProvider(create: (_) => ObjectProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Example1HomeScreen(),
      routes: {
        '/new':(context)=>const AddNewBreadCrumbScreen(),
        'example2':(context)=>const E2HomeScreen(),
      },
    );
  }
}
