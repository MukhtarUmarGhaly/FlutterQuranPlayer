import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_audio/models/playlist_provider.dart';
import 'package:quran_audio/pages/home_page.dart';
import 'package:quran_audio/themes/theme_provider.dart';


void main(){

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => PlaylistProvider()),
        // Add more providers if needed!
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: const HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}