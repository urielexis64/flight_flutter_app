import 'package:flight_app/src/widgets/city_card.dart';
import 'package:flight_app/src/models/city_model.dart';

List<String> locations = [
  "México (MX)",
  "Estados Unidos (USA)",
  "Canadá (CAN)",
];

List<CityCard> cityCards = [
  CityCard(City(
      'Rio de Janeiro',
      'Río de Janeiro es una enorme ciudad costera de Brasil, famosa por sus playas de Copacabana e Ipanema, la estatua del Cristo Redentor de 38 m de alto sobre el cerro del Corcovado y el morro Pan de Azúcar, una cima de granito con teleféricos que ascienden a su cima. La ciudad también es conocida por sus extensas favelas. El estridente festival del Carnaval, con desfiles de carros alegóricos, extravagantes disfraces y bailarines de samba, es considerado el más grande del mundo.',
      'March 2021',
      '20%',
      1234,
      4321,
      'https://unibrastravel.com/wp-content/uploads/2016/04/Rio-de-Janeiro-II.jpg')),
  CityCard(
    City(
      'México',
      'México es un país entre los Estados Unidos y América Central, conocido por las playas en el Pacífico y el golfo de México, y su diverso paisaje de montañas, desiertos y selvas. Las ruinas antiguas, como Teotihuacán y la ciudad maya de Chichén Itzá, se distribuyen por el país, al igual que las ciudades de la época colonial española. En la capital Ciudad de México, las elegantes tiendas, los famosos museos y los restaurantes gourmet son parte de la vida moderna.',
      'Jan 2021',
      '10%',
      1234,
      4321,
      'https://www.eluniversal.com.mx/sites/default/files/2020/11/18/cdmx.jpg',
    ),
  ),
  CityCard(
    City(
      'Las Vegas',
      'Las Vegas, en el desierto de Mojave de Nevada, es una ciudad turística famosa por su activa vida nocturna, que se centra en casinos abiertos las 24 horas del día y otras opciones de entretenimiento. Su calle principal y su núcleo es "The Strip", con un poco más de cuatro millas de extensión. Este bulevar alberga hoteles temáticos con elaboradas exhibiciones, como fuentes sincronizadas con la música o réplicas de una pirámide egipcia, el Gran Canal de Venecia y la Torre Eiffel.',
      'May 2019',
      '30%',
      1234,
      4321,
      'https://assets.entrepreneur.com/content/3x2/2000/20191003180020-Chicago.jpeg?width=700&crop=2:1',
    ),
  ),
  CityCard(
    City(
      'Hong Kong',
      'Hong Kong es un territorio autónomo y una antigua colonia británica en el sureste de China. Su centro urbano activo y densamente poblado es un importante puerto y un centro financiero global con un paisaje lleno de rascacielos. Central (el distrito comercial) cuenta con elementos arquitectónicos como la Bank of China Tower de I.M. Pei. Hong Kong es también un importante destino comercial, famoso por los sastres que hacen confecciones a la medida y el Mercado Nocturno de Temple Street.',
      'Feb 2020',
      '5%',
      1234,
      4321,
      'https://www.hola.com/imagenes/viajes/20171120102214/viajes-Hong-kong-china-que-ver/0-509-123/hong-kong-tradicion-y-modernidad-t.jpg?filter=ds75',
    ),
  ),
  CityCard(
    City(
      'Canadá',
      'Canadá es el país norteamericano que se extiende desde los Estados Unidos en el sur hasta el círculo polar ártico en el norte. Las ciudades principales incluyen la enorme Toronto, Vancouver, el centro cinematográfico de la costa oeste, las ciudades de habla francesa Montreal y Quebec, y la capital Ottawa. Las vastas franjas de naturaleza de Canadá incluyen el Parque Nacional Banff ubicado en un lago en las Montañas Rocosas. También incluye las cataratas del Niágara, un famoso grupo de enormes cascadas.',
      'Apr 2020',
      '15%',
      3441,
      6673,
      'https://img2.rtve.es/v/5648508?w=1600&preview=1597779860991.jpg',
    ),
  ),
  CityCard(
    City(
      'Dubái',
      'Dubái es una ciudad emirato de los Emiratos Árabes Unidos conocida por su lujoso comercio, la arquitectura ultramoderna y su vida nocturna animada. Burj Khalifa, una torre de 830 m de alto, domina el paisaje lleno de rascacielos. A sus pies se encuentra la Fuente de Dubái, con coreografías de chorros y luces al ritmo de la música. En las islas artificiales justo frente a la costa están Atlantis, la Palma, un centro turístico con agua y parques de animales marinos.',
      'Jul 2021',
      '2%',
      8899,
      10199,
      'https://media.tacdn.com/media/attractions-splice-spp-674x446/09/a5/09/2a.jpg',
    ),
  ),
];
