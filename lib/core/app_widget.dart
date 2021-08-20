import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsivo/pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //*Esse title serve para ficar na aba do navegador de internet
      title: 'Projeto responsivo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
