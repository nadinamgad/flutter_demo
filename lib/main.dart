import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:logger/logger.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    // final Color customColor = Color.fromRGBO(0,34,72,255);
    Map<int, Color> color =
    {
      50:const Color.fromRGBO (34,72,255, .1),
      100:const Color.fromRGBO(34,72,255, .2),
      200:const Color.fromRGBO(34,72,255, .3),
      300:const Color.fromRGBO(34,72,255, .4),
      400:const Color.fromRGBO(34,72,255, .5),
      500:const Color.fromRGBO(34,72,255, .6),
      600:const Color.fromRGBO(34,72,255, .7),
      700:const Color.fromRGBO(34,72,255, .8),
      800:const Color.fromRGBO(34,72,255, .9),
      900:const Color.fromRGBO(34,72,255, 1),
    };

    MaterialColor colorCustom = MaterialColor(0xFF07264E, color);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: colorCustom,
        ),
        // Other theme configurations
      ),
      home: const MyHomePage(title: 'Fleet system Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Logger logger = Logger();

  Future<void> _startTrip() async {
    // Request location permission
    PermissionStatus status = await Permission.location.request();
    logger.d(status);
    if (status.isGranted) {
      // Permission granted, handle start trip logic here
      logger.d('Start trip!');
    } 
    else if (status.isDenied || status.isPermanentlyDenied)
    {
      // Permission denied, handle accordingly (e.g., show a dialog)
      // logger.d('Location permission denied');

      bool openSettings = await showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Location Permission Required'),
        content: const Text('Please grant location permission to start the trip.'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Open Settings'),
          ),
        ],
      ),
    );

    if (openSettings) {
      // Open app settings
      await openAppSettings();
    }
    else 
      {
        // Permission denied after requesting again, handle accordingly
        logger.d('Location permission denied');
      }
    }

    else 
    {
    // Handle other permission statuses
    logger.d('other status');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Trip Status:',
            ),
            ElevatedButton(
            onPressed: () {
              logger.d("start trip is pressed!");
              _startTrip();
            },
  child: const Text('Start Trip'),
),

            ElevatedButton(
              onPressed: () {
                // Handle end trip button press
              },
              child: const Text('End Trip'),
            ),
          ],
        ),
      ),
    );
  }
}
