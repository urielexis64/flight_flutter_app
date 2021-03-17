import 'package:flight_app/choice_chip.dart';
import 'package:flight_app/city_card.dart';
import 'package:flight_app/constants.dart';
import 'package:flight_app/custom_shape_clipper.dart';
import 'package:flight_app/data.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [HomeScreenTop(), homeScreenBottom],
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
  int _selectedLocationIndex = 0;
  bool isFlightSelected = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: size.height * 0.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Constants.primaryColor, Constants.secondaryColor]),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Constants.lightColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        PopupMenuButton(
                          initialValue: _selectedLocationIndex,
                          onSelected: (index) {
                            setState(() {
                              _selectedLocationIndex = index;
                            });
                          },
                          itemBuilder: (BuildContext context) {
                            return <PopupMenuItem<int>>[
                              PopupMenuItem(
                                  child: Text(
                                    locations[0],
                                    style: Constants.dropDownMenuItemStyle,
                                  ),
                                  value: 0),
                              PopupMenuItem(
                                child: Text(
                                  locations[1],
                                  style: Constants.dropDownMenuItemStyle,
                                ),
                                value: 1,
                              ),
                              PopupMenuItem(
                                child: Text(
                                  locations[2],
                                  style: Constants.dropDownMenuItemStyle,
                                ),
                                value: 2,
                              ),
                            ];
                          },
                          child: Row(
                            children: [
                              Text(locations[_selectedLocationIndex],
                                  style: Constants.dropDownLabelStyle),
                              Icon(Icons.keyboard_arrow_down,
                                  color: Constants.lightColor)
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.settings, color: Constants.lightColor)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .05,
                  ),
                  Text(
                    'Where would\nyou want to go?',
                    style: Constants.titleStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(Constants.bigRadius),
                      child: TextField(
                        controller: TextEditingController(
                            text: locations[_selectedLocationIndex]),
                        cursorColor: Constants.primaryColor,
                        style: Constants.dropDownMenuItemStyle,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: Constants.defaultPadding * 2,
                                vertical: Constants.defaultPadding),
                            suffixIcon: Material(
                              elevation: 2,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(Constants.bigRadius)),
                              child: Icon(
                                Icons.search,
                                color: Constants.darkColor,
                              ),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              isFlightSelected = true;
                            });
                          },
                          child: CustomChoiceChip(
                              icon: Icons.flight_takeoff_rounded,
                              text: 'Flights',
                              isSelected: isFlightSelected)),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFlightSelected = false;
                          });
                        },
                        child: CustomChoiceChip(
                            icon: Icons.hotel,
                            text: 'Hotels',
                            isSelected: !isFlightSelected),
                      ),
                    ],
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

final homeScreenBottom = Container(
    padding: EdgeInsets.all(Constants.defaultPadding),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Currently watched items',
              style: TextStyle(fontSize: 14),
            ),
            Text(
              'VIEW ALL(20)',
              style: Constants.viewAllStyle,
            ),
          ],
        ),
        Container(
          height: 220,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [...cityCards],
          ),
        )
      ],
    ));
