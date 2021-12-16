import 'package:flutter/material.dart';


class LogoSiparisFormu extends StatelessWidget {
  const LogoSiparisFormu({Key? key}) : super(key: key);

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
                  Text("LOGO TASARIM SİPARİŞİ",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
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
                            hintText: 'Kaç Adet Sunum Talep Ediyorsunuz',
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
                            hintText: 'Marka Adınız',
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
                            hintText: 'Beğendiğiniz Logo Tasarımlarından Bahseder Misiniz?',
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
                            hintText: 'Bir Sloganınız Var Mı?',
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
                            hintText: 'Sizin İçin Bir Slogan Üretmemizi İster Misiniz?',
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
                            hintText: 'Sunum1 Detaylarını Anlatır Mısınız?',
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
                            hintText: 'Sunum2 Detaylarını Anlatır Mısınız?',
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
