import 'package:flight_app/custom_shape_clipper.dart';
import 'package:flight_app/data.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [HomeScreenTop()],
      ),
    );
  }
}

class HomeScreenTop extends StatefulWidget {
  HomeScreenTop({Key key}) : super(key: key);

  @override
  _HomeScreenTopState createState() => _HomeScreenTopState();
}

class _HomeScreenTopState extends State<HomeScreenTop> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orangeAccent, Colors.orange])),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        PopupMenuButton(
                          itemBuilder: (BuildContext context) {
                            return <PopupMenuItem<int>>[
                              PopupMenuItem(
                                  child: Text(locations[0]), value: 0),
                              PopupMenuItem(
                                child: Text(locations[1]),
                                value: 1,
                              ),
                              PopupMenuItem(
                                child: Text(locations[2]),
                                value: 2,
                              ),
                            ];
                          },
                          child: Row(
                            children: [
                              Text(locations[0]),
                              Icon(Icons.keyboard_arrow_down)
                            ],
                          ),
                        ),
                        Icon(Icons.ac_unit_outlined)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
