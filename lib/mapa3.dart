import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa3 extends StatefulWidget {
  const Mapa3({Key? key}) : super(key: key);

  @override
  _Mapa3State createState() => _Mapa3State();
}

class _Mapa3State extends State<Mapa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 3'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(48.870502, 2.304897), zoom: 15),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/transport-dark/{z}/{x}/{y}.png?apikey=9862afd1e49c4918803cab6bc86219c9',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(48.870502, 2.304897), //Champs,Paris
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.amber),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
