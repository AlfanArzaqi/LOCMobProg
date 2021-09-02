import 'package:flutter/material.dart';
import 'package:lokasi/home_page.dart';
import 'package:lokasi/model/location_model.dart';
import 'package:lokasi/services/location_service.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<LocationModel>(
      create: (_) => LocationService().getStreamData,
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: HomePage()
      ), 
    );
  }
}