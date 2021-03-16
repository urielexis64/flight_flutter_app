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
            height: size.height * 0.55,
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
                    height: 50,
                  ),
                  Text(
                    'Where would\nyou want to go?',
                    style: Constants.titleStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
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
                        child: ChoiceChip(
                            icon: Icons.flight_takeoff_rounded,
                            text: 'Flights',
                            isSelected: isFlightSelected),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFlightSelected = false;
                          });
                        },
                        child: ChoiceChip(
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

class ChoiceChip extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isSelected;

  ChoiceChip({this.icon, this.text, this.isSelected});

  @override
  _ChoiceChipState createState() => _ChoiceChipState();
}

class _ChoiceChipState extends State<ChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: Constants.smallPadding,
          horizontal: Constants.defaultPadding),
      decoration: widget.isSelected
          ? BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(Constants.bigRadius)),
              color: Constants.lightColor.withOpacity(0.15))
          : null,
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            widget.icon,
            size: 20,
            color: Constants.lightColor,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            widget.text,
            style: TextStyle(fontSize: 14, color: Constants.lightColor),
          )
        ],
      ),
    );
  }
}
