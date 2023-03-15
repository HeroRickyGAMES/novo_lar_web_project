import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:html' as html;
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:seo_renderer/seo_renderer.dart';

void main(){
  runApp(
      RobotDetector(
        child: MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            primaryColor: Colors.white,
          ),
          home: mainNovoLar(),
          navigatorObservers: [seoRouteObserver],
        ),
      ),
  );
}

late String searchAddress = 'Rua José Coutinho da Silva número 331 jardim Fortaleza Guarulhos';


class mainNovoLar extends StatelessWidget {
  const mainNovoLar({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      SystemChrome.setApplicationSwitcherDescription(
          ApplicationSwitcherDescription(
            label: 'Residêncial Novo Lar Vovõ e Vovó',

          ));

      return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title:
              TextRenderer(
                child: Text(
                    'Residencial Novo Lar Vovó E Vovo',
                  style: TextStyle(
                    color: Colors.white
                  )
                ),
              ),
              backgroundColor: Colors.pink[800],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.pink[800],
                    width: double.infinity,
                    height: 300,
                    child: Container(
                      height: 300,
                      width: 300,
                      padding: EdgeInsets.all(16),
                      child: Image.asset(
                        'assets/frontCasa.png',
                      ),
                    ),
                  ),
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth < 600) {
                  return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        child: TextRenderer(
                          child: Text(
                            'Temos tudo que seu idoso precisa aceito paciente de todos os graus 6 refeições temos cuidador técnico nutricionista todos cuidado que seu idoso precisa agenda sua visita será uma satisfação pode atender vcs aqui temos vagas mensal diária semanais o que a família busca estamos aqui pra atender preço bem acessível responsável e diretora Cassia.',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Image.asset(
                          'assets/medicaesenhora.jpg',
                          width: 512,
                          height: 512,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  );
                } else {
                  return Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: TextRenderer(
                            child: Text(
                              'Temos tudo que seu idoso precisa aceito paciente de todos os graus 6 refeições temos cuidador técnico nutricionista todos cuidado que seu idoso precisa agenda sua visita será uma satisfação pode atender vcs aqui temos vagas mensal diária semanais o que a família busca estamos aqui pra atender preço bem acessível estamos na rua José Coutinho da Silva número 331 jardim Fortaleza Guarulhos responsável e diretora Cassia.',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          child: Image.asset(
                            'assets/medicaesenhora.jpg',
                            width: 512,
                            height: 512,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
                Container(
                  width: double.infinity,
                  height: 400,
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    crossAxisCount: 3,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Image.asset('assets/idosacommoca.jpg'),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Image.asset('assets/senhores.jpg'),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Image.asset('assets/idososjogandoTRUCO.jpg'),
                      ),
                    ],
                  ),
                ),
                  LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      if (constraints.maxWidth < 600) {
                        return Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(16),
                              width: 400,
                              height: 400,
                              child:
                              FlutterMap(
                                options: MapOptions(
                                  center: LatLng(-23.383350, -46.448681),
                                  zoom: 16.5,
                                ),
                                nonRotatedChildren: [
                                  AttributionWidget.defaultWidget(
                                    source: 'OpenStreetMap contributors',
                                    onSourceTapped: null,
                                  ),
                                ],
                                children: [
                                  TileLayer(
                                    urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                    userAgentPackageName: 'com.example.app',
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                TextRenderer(
                                  child: Text(
                                    'Rua José Coutinho da Silva número 331 Jardim Fortaleza Guarulhos\nResponsável e Diretora Cassia.\nWhatsapp: 11 932067937',
                                    style: TextStyle(
                                        fontSize: 19
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.pink[800]
                                    ),
                                    onPressed: (){
                                      final String url = 'https://wa.me/5511932067937';

                                      html.window.open(url, '_blank');
                                    }, child: Text(
                                      'Contate-nos agora pelo Whatsapp!',
                                      style: TextStyle(
                                          color: Colors.white
                                      )
                                  ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        );
                      } else {
                        return Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.all(16),
                                width: 400,
                                height: 400,
                                child:
                                FlutterMap(
                                  options: MapOptions(
                                    center: LatLng(-23.383350, -46.448681),
                                    zoom: 16.5,
                                  ),
                                  nonRotatedChildren: [
                                    AttributionWidget.defaultWidget(
                                      source: 'OpenStreetMap contributors',
                                      onSourceTapped: null,
                                    ),
                                  ],
                                  children: [
                                    TileLayer(
                                      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                      userAgentPackageName: 'com.example.app',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.all(16),
                                child:
                                Column(
                                  children: [
                                    TextRenderer(
                                      child: Text(
                                          'Rua José Coutinho da Silva número 331 Jardim Fortaleza Guarulhos\nResponsável e Diretora Cassia.\nWhatsapp: 11 932067937',
                                        style: TextStyle(
                                          fontSize: 19
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.pink[800]
                                        ),
                                        onPressed: (){
                                          final String url = 'https://wa.me/5511932067937';

                                          html.window.open(url, '_blank');
                                      }, child: Text(
                                          'Contate-nos agora pelo Whatsapp!',
                                        style: TextStyle(
                                          color: Colors.white
                                        )
                                      ),
                                      ),
                                    ),
                                  ],
                                )
                              ),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    color: Colors.grey,
                    child: Center(child: Center(child: Text('Desenvolvido por HeroRickyGames @ 2023')))
                  )
              ],
        ),
      ),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                final String url = 'https://wa.me/5511932067937';

                html.window.open(url, '_blank');
              },
              child: Image.asset('assets/wpp.png'),
              backgroundColor: Colors.transparent,
            ),
          );
  }
}
