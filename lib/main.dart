import 'package:flutter/material.dart';
import 'package:provider_example/controllers/bread_crum_provider.dart';
import 'package:provider_example/view/add_new_bread_crumb_screen.dart';
import 'package:provider_example/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => BreadCrumbProvider()),
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
      home: const HomeScreen(),
      routes: {
        '/new':(context)=>const AddNewBreadCrumbScreen(),
      },
    );
  }
}
