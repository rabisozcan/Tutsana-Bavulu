import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';

class IletisimSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İletişim'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Color.fromARGB(255, 255, 119, 0)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IletisimBilgisi(
                ikon: Icons.phone,
                metin: 'Telefon: 05352371982',
                onPress: () => _aramaYap('05352371982'),
              ),
              SizedBox(height: 16.0),
              IletisimBilgisi(
                ikon: Icons.email,
                metin: 'E-posta: emirozturk@trakya.edu.tr',
                onPress: () => _emailGonder('emirozturk@trakya.edu.tr'),
              ),
              SizedBox(height: 16.0),
              IletisimBilgisi(
                ikon: Icons.link,
                metin: 'LinkedIn: linkedin.com/in/example',
                onPress: () => _urlAc('https://www.linkedin.com/in/example'),
              ),
              SizedBox(height: 16.0),
              IletisimBilgisi(
                ikon: Icons.code,
                metin: 'GitHub: github.com/example',
                onPress: () => _urlAc('https://github.com/example'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TutSanaBavuluApp()),
                  );
                },
                child: Text('Anasayfaya Geri Dön'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _aramaYap(String telefonNumarasi) async {
    String url = 'tel:$telefonNumarasi';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Arama başlatılamıyor: $url';
    }
  }

  void _emailGonder(String email) async {
    String url = 'mailto:$email';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'E-posta gönderilemiyor: $url';
    }
  }

  void _urlAc(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Bağlantı açılamıyor: $url';
    }
  }
}

class IletisimBilgisi extends StatelessWidget {
  final IconData ikon;
  final String metin;
  final VoidCallback onPress;

  IletisimBilgisi({
    required this.ikon,
    required this.metin,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(ikon, size: 30.0),
          SizedBox(width: 8.0),
          Text(
            metin,
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IletisimSayfasi(),
  ));
}
