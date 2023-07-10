// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:logger/logger.dart';


// // class MapPage extends StatelessWidget {
// //   const MapPage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     // Build your map page widget
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Map Page'),
// //       ),
// //       body: const Text('hello!'),
// //       // const GoogleMap(
// //       //   // Map configuration
// //       //   initialCameraPosition: CameraPosition(
// //       //     target: LatLng(0, 0),
// //       //     zoom: 14.0,
// //       //   ),
// //       // ),
// //     );
// //   }
// // }

// class MapPage extends StatelessWidget {
//   const MapPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // Build your map page widget
//     Position? _currentLocation;
//     late bool servicePermission = false;
//     late LocationPermission permission;

//     String _currentAdress = "";
//     Future<Position> _getCurrentLocation() async 
//     {
//       return await Geolocator.getCurrentPosition();
//     }

//     MapPage() {
//       _getCurrentLocation();
//       print("${_currentLocation}");
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Map Page'),
//       ),
//       body: const Text('hello!'),
//       // const GoogleMap(
//       //   // Map configuration
//       //   initialCameraPosition: CameraPosition(
//       //     target: LatLng(0, 0),
//       //     zoom: 14.0,
//       //   ),
//       // ),
//     );
//   }
// }

// // class MapPage extends StatelessWidget {
// //   const MapPage({Key? key}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Map'),
// //       ),
// //       body: GeolocatorWidget(),
// //     );
// //   }
// // }


