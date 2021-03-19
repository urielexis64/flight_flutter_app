import 'package:animate_do/animate_do.dart';
import 'package:flight_app/src/models/city_model.dart';
import 'package:flight_app/constants.dart';
import 'package:flutter/material.dart';

class CityDetail extends StatelessWidget {
  City _city;
  Size _size;

  @override
  Widget build(BuildContext context) {
    _city = ModalRoute.of(context).settings.arguments;
    _size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _createAppBar(context),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: FadeIn(
                delay: Duration(milliseconds: 500),
                duration: Duration(seconds: 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Descripción',
                      textScaleFactor: 1.2,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Divider(),
                    Text(
                      _city.description,
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            )
          ]))
        ],
      ),
    );
  }

  Widget _createAppBar(BuildContext context) {
    return SliverAppBar(
      elevation: 5,
      backgroundColor: Constants.primaryColor,
      expandedHeight: _size.height * .4,
      brightness: Brightness.dark,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Constants.lightColor,
          ),
          onPressed: () => Navigator.of(context).pop()),
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: FadeInUp(
          duration: Duration(milliseconds: 1000),
          child: Text(
            _city.cityName,
            style: Constants.titleStyle,
          ),
        ),
        titlePadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        centerTitle: true,
        stretchModes: [StretchMode.fadeTitle],
        background: Stack(children: [
          Hero(
            tag: _city.cityName,
            child: Image.network(
              _city.imagePath,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: FadeIn(
                duration: Duration(milliseconds: 1300),
                child: Container(
                  height: 100,
                  width: _size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.black, Colors.transparent])),
                ),
              ))
        ]),
      ),
    );
  }
}
