import 'package:flutter/material.dart';
import 'package:tripadvisor/models/local.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tripadvisor/screens/home/widgets/list_photos.dart';
import 'package:tripadvisor/style.dart';

class Home extends StatelessWidget {
  final Local _local = Local(
    photo: "assets/images/Banner.jpg",
    nameCountry: "França",
    nameCapital: "Paris",
    avaliation: 32,
    description:
        "É impossível não se render aos encantos de Paris, a bela capital francesa e destino turístico frequentado por milhões de pessoas todos os anos. Vibrante, charmosa, romântica, divertida, além de berço da cultura e da arte, a Cidade Luz, como é chamada, possui uma infindável lista de qualidades.",
    photoGallery: [
      "assets/images/foto_1.jpg",
      "assets/images/foto_2.jpg",
      "assets/images/foto_3.jpg",
      "assets/images/foto_4.jpg",
      "assets/images/foto_5.jpg",
      "assets/images/foto_6.jpg",
      "assets/images/foto_7.jpg",
      "assets/images/foto_8.jpg",
      "assets/images/foto_9.jpg",
    ],
    photoTitles: [
      "Musée d'Orsay",
      "Catedral de Notre-Dame",
      "Sainte-Chapelle",
      "Museu do Louvre",
      "Arco do Triunfo",
      "Palais Garnier",
      "Jardim de Luxemburgo",
      "Seine River",
      "Torre Eiffel",
    ],
    titleLocal: "Conheça As Maravilhas Da Capital Francesa",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                _local.photo,
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: greyTheme,
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          _local.nameCapital + " - " + _local.nameCountry,
                          style: TextStyle(
                            color: greyTheme,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 20),
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.solidStar,
                              color: orangeTheme,
                              size: 16,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            FaIcon(
                              FontAwesomeIcons.solidStar,
                              color: orangeTheme,
                              size: 16,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            FaIcon(
                              FontAwesomeIcons.solidStar,
                              color: orangeTheme,
                              size: 16,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            FaIcon(
                              FontAwesomeIcons.solidStar,
                              color: orangeTheme,
                              size: 16,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            FaIcon(
                              FontAwesomeIcons.solidStar,
                              color: greyTheme,
                              size: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        Text(
                          "${_local.avaliation} avaliações",
                          style: TextStyle(
                            color: greyTheme,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          _local.titleLocal,
                          style: TextStyle(
                            color: greenTheme,
                            fontSize: 24,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          _local.description,
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Fotos",
                          style: TextStyle(
                            color: greenTheme,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListPhotos(
                      _local.photoTitles[0],
                      _local.photoGallery[0],
                      _local.photoTitles[1],
                      _local.photoGallery[1],
                      _local.photoTitles[2],
                      _local.photoGallery[2],
                    ),
                    ListPhotos(
                      _local.photoTitles[3],
                      _local.photoGallery[3],
                      _local.photoTitles[4],
                      _local.photoGallery[4],
                      _local.photoTitles[5],
                      _local.photoGallery[5],
                    ),
                    ListPhotos(
                      _local.photoTitles[6],
                      _local.photoGallery[6],
                      _local.photoTitles[7],
                      _local.photoGallery[7],
                      _local.photoTitles[8],
                      _local.photoGallery[8],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
