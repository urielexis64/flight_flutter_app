import 'package:flight_app/src/models/city_model.dart';
import 'package:flight_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency();

    return GestureDetector(
      onTap: () =>
          Navigator.of(context).pushNamed('city_detail', arguments: city),
      child: Padding(
        padding: EdgeInsets.all(Constants.smallPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.all(Radius.circular(Constants.defaultRadius)),
              child: Stack(
                children: [
                  Container(
                    child: Hero(
                      tag: city.cityName,
                      child: Image.network(
                        city.imagePath,
                        width: 150,
                        height: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                      left: 0,
                      bottom: 0,
                      width: 160,
                      height: 90,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Colors.black, Colors.transparent])),
                      )),
                  Positioned(
                      left: 10,
                      bottom: 10,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            city.cityName,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16,
                                color: Constants.lightColor,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            city.monthYear,
                            style: TextStyle(
                                fontSize: 12, color: Constants.lightColor),
                          ),
                        ],
                      )),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                            color: Constants.lightColor,
                            boxShadow: [
                              BoxShadow(
                                color: Constants.primaryColor,
                                blurRadius: .5,
                              )
                            ],
                            borderRadius: BorderRadius.all(
                                Radius.circular(Constants.defaultRadius))),
                        child: Text(
                          city.discount,
                        )),
                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${formatCurrency.format(city.newPrice)}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '(${formatCurrency.format(city.oldPrice)})',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
