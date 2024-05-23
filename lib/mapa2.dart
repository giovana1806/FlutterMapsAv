import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa2 extends StatefulWidget {
  const Mapa2({Key? key}) : super(key: key);

  @override
  _Mapa2State createState() => _Mapa2State();
}

class _Mapa2State extends State<Mapa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 2'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(40.758896, -73.985130), zoom: 15),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/landscape/{z}/{x}/{y}.png?apikey=9862afd1e49c4918803cab6bc86219c9',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(40.758896, -73.985130), //TimeSquare,NY
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.red.shade900),
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
