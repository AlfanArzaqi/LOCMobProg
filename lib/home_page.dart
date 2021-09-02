import 'package:flutter/material.dart';
import 'package:lokasi/model/location_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var locationModel = Provider.of<LocationModel>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Deteksi Lokasi Realtime",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lokasi Anda Saat ini :",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Latitude : ${locationModel.latitude}, Longitude: ${locationModel.longitude}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      )),
    );
  }
}
