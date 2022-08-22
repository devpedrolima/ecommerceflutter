import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Categorise extends StatefulWidget {
  @override
  _CategoriseState createState() => _CategoriseState();
}

class _CategoriseState extends State<Categorise> {
  final List<String> imgList = [
    'https://57270.cdn.simplo7.net/static/57270/sku/panos-camiseta-illusion-of-control--p-1633899041276.jpeg',
    'https://57270.cdn.simplo7.net/static/57270/sku/panos-camiseta-not-a-good-day-copia-1--p-1633895654550.jpeg',
    'https://57270.cdn.simplo7.net/static/57270/sku/panos-Camiseta-Spoiler-Copia-1-copia-1-1649110347229.jpeg',
    'https://57270.cdn.simplo7.net/static/57270/sku/panos-lonely-hearts--p-1611504801688.jpeg',
    'https://57270.cdn.simplo7.net/static/57270/sku/panos-life-is-hard--p-1620519138149.jpeg',
    'https://57270.cdn.simplo7.net/static/57270/sku/panos-cara-limpa--p-1648131914856.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias'),
      ),
      body: SafeArea(
          top: false,
          left: false,
          right: false,
          child: Container(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 8, left: 6, right: 6, bottom: 8),
              children: List.generate(6, (index) {
                return Container(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 180,
                            width: double.infinity,
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: imgList[index],
                              placeholder: (context, url) =>
                                  Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) =>
                                  new Icon(Icons.error),
                            ),
                          ),
                          ListTile(
                              title: Text(
                            'Panos t-shirt',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ))
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          )),
    );
  }
}
