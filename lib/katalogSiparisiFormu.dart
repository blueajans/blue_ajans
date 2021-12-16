import 'package:flutter/material.dart';


class KatalogSiparisFormu extends StatelessWidget {
  const KatalogSiparisFormu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/arkaPlan.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child:Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset("assets/logo.png"),
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text("KATALOG SİPARİŞİ",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'AD SOYAD',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'E-POSTA ADRESİ',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'TELEFON NUMARASI',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Ekran Yönü(Yatay/Dikey)',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'İç Sayfa Yapısı(kapak hariç sayfa sayısı 4 ün katı olmalı)',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Kapak Olacak mı(+4 sayfa)',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Kapakta Kabartma Olacak mı?',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Selefon Uygulaması(Parlak/Mat)',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Tasarımınız Hazır mı, Hazır Değilse Tasarım İçin De Teklif İletelim Mi?',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'İlave Notlarınız',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen bir değer giriniz';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate will return true if the form is valid, or false if
                              // the form is invalid.
                              if (_formKey.currentState!.validate()) {
                                // Process data.
                              }
                            },

                            child: const Text('TALEP GÖNDER'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
