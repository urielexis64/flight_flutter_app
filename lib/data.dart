import 'package:flight_app/city_card.dart';

List<String> locations = [
  "México (MX)",
  "Estados Unidos (USA)",
  "Canadá (CAN)",
];

List<CityCard> cityCards = [
  CityCard(
    cityName: 'Rio de Janeiro',
    monthYear: 'March 2021',
    discount: '20%',
    newPrice: 1234,
    oldPrice: 4321,
    imagePath:
        'https://www.redijl.org/wp-content/uploads/2018/10/Rio-De-Janeiro_.jpg',
  ),
  CityCard(
    cityName: 'México',
    monthYear: 'Jan 2021',
    discount: '10%',
    newPrice: 1234,
    oldPrice: 4321,
    imagePath:
        'https://www.eluniversal.com.mx/sites/default/files/2020/11/18/cdmx.jpg',
  ),
  CityCard(
    cityName: 'Las Vegas',
    monthYear: 'May 2019',
    discount: '30%',
    newPrice: 1234,
    oldPrice: 4321,
    imagePath:
        'https://assets.entrepreneur.com/content/3x2/2000/20191003180020-Chicago.jpeg?width=700&crop=2:1',
  ),
  CityCard(
    cityName: 'Hong Kong',
    monthYear: 'Feb 2020',
    discount: '5%',
    newPrice: 1234,
    oldPrice: 4321,
    imagePath: 'https://media.timeout.com/images/105407349/630/472/image.jpg',
  )
];
