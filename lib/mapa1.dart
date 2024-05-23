import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa1 extends StatefulWidget {
  const Mapa1({Key? key}) : super(key: key);

  @override
  _Mapa1State createState() => _Mapa1State();
}

class _Mapa1State extends State<Mapa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAPA 1'),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(-23.554772, -46.635654), zoom: 15),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=9862afd1e49c4918803cab6bc86219c9',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-23.554772, -46.635654), //Liberdade,SP
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.blue),
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
