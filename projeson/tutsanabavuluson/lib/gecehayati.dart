import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeceHayatiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 23, 34, 237),
              Color.fromARGB(255, 255, 119, 0)
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  'AMERİKA\'DA GECE HAYATI',
                  style: GoogleFonts.azeretMono(
                    fontSize: 35,
                    shadows: [
                      Shadow(
                        blurRadius: 5,
                        color: Colors.grey,
                      ),
                    ],
                  ).copyWith(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              SizedBox(height: 20),
              Image.network(
                'https://i.hizliresim.com/h2134me.jpg',
                fit: BoxFit.cover,
                height: 300,
                width: 500,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Amerika\'da gece hayatı, her zevke ve tarza hitap eden geniş bir yelpazeye sahiptir. Büyük metropollerdeki gece kulüplerinden, küçük kasaba barlarına kadar birçok seçenek bulunmaktadır. Amerika\'nın farklı bölgelerinde gece hayatının tadını çıkarmak için birçok mekan ve etkinlik bulabilirsiniz.',
                  style: GoogleFonts.azeretMono(
                    fontSize: 16,
                    shadows: [
                      Shadow(
                        blurRadius: 5,
                        color: Colors.grey,
                      ),
                    ],
                  ).copyWith(color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      '21 Yaş Kuralı',
                      style: GoogleFonts.azeretMono(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Çoğu ülkenin aksine, Amerika’da alkollü içecek tüketmek istiyorsanız en az 21 yaşında olmalısınız. Her gittiğiniz yerde olmasa bile bazı yerler kimlik sorabiliyor. Kimlik göstermediğiniz sürece de size alkollü içecek getirmeyi reddedebiliyorlar. Bu tabii ki her mekân için geçerli değil ama sizin pasaportunuz ya da varsa ehliyetiniz, hep yanınızda olsun. (Bazı mekânlar eski tip Türkiye Cumhuriyeti nüfus kartlarını da kabul etmeyebiliyor.)',
                      style: GoogleFonts.azeretMono(
                        fontSize: 16,
                        shadows: [
                          Shadow(
                            blurRadius: 5,
                            color: Colors.grey,
                          ),
                        ],
                      ).copyWith(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Work and Travel Bölgeleri',
                      style: GoogleFonts.azeretMono(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'International ve Amerikalı öğrencilerin çoğunlukta olduğu bir çok Work and Travel destinasyonunda genellikle partiler gece saat 11.00 gibi başlar ve en geç 02.30 gibi son bulur, bunun sebebi ise bölgede bir çok işletmenin olması ve bu işletmelerde sabah saat 08.00, 09.00 gibi işe başlayacak gençlerin olmasıdır. Programa katılan öğrencilerin yeterli performansı gösterebilmesi, işlerinden kovulmaması için bölgelerin genel kuralları bu şekildedir.\n\nWork and Travel programının \'\'travel\'\' döneminde gideceğiniz; (NYC, LA, Las Vegas ) gibi büyük şehirlerde dilediğiniz gibi sabahlara kadar eğlenebilirsiniz.\n\nÖzgürlükler ülkesi olduğunu bildiğimiz Amerika’da özgürlüğümüz olması gerektiği gibi bir başkasının kişisel alanına girdiğimizde biter. Bu konuda da yaptırımlar çok katıdır. Karşılaştığımız yada yeni tanıştığımız karşı cins ile kurduğumuz herhangi bir uygunsuz durum programızı hatta özgürlüğünüzü tehlikeye sokabilir.',
                      style: GoogleFonts.azeretMono(
                        fontSize: 16,
                        shadows: [
                          Shadow(
                            blurRadius: 5,
                            color: Colors.grey,
                          ),
                        ],
                      ).copyWith(
                          color: const Color.fromARGB(255, 255, 255, 255)),
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
