import 'package:flutter/material.dart';
import 'main2.dart'; // Gerekli diğer sayfaları ekleyin
import 'package:google_fonts/google_fonts.dart';

class GezilecekYerlerPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

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
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Text(
                  'GEZİLECEK YERLER',
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
              // Gezilecek yerlerin listesi ve içerikleri
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // New York
                    Text(
                      'New York',
                      style: GoogleFonts.azeretMono(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 10),
                    Image.network(
                      'https://i.hizliresim.com/jpdylgb.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'New York, sanat ve moda için bir merkez olan büyük bir Amerikan şehridir ve çeşitli kültürlerin kaynaştığı bir yerdir. '
                      'Bir Broadway gösterisine katılarak ve Met sanat galerisini ziyaret ederek kendinizi sanat ortamına bırakabilir ya da '
                      'ünlü bir restoranda güzel yemekler yiyebilirsiniz. Hatta Central Park\'ta veya High Line boyunca yürüyüşe çıkarak koşuşturmacadan kaçabilirsiniz.',
                      style: GoogleFonts.azeretMono(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    // Miami
                    Text(
                      'Miami',
                      style: GoogleFonts.azeretMono(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 10),
                    Image.network(
                      'https://i.hizliresim.com/hsgbyvr.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Miami, güçlü Karayip etkilerine sahip kültürel bir destinasyondur. Bu Güney Florida şehri, South Beach\'in palmiye ağaçlarından ve '
                      'turkuaz sularından dans kulüplerine ve müzelere kadar her şeye sahiptir. Miami şehir merkezinin alışveriş ve gece hayatını keşfederken '
                      'Küba kültürü ve mutfağının tadına bakmak için Little Havana\'yı keşfedebilirsiniz.',
                      style: GoogleFonts.azeretMono(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    // Los Angeles
                    Text(
                      'Los Angeles',
                      style: GoogleFonts.azeretMono(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 10),
                    Image.network(
                      'https://i.hizliresim.com/545np0g.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Los Angeles kesinlikle Amerika seyahat planlarınıza dahil etmeniz gereken bir şehirdir. Birçok Hollywood filminin sahnesi olarak kullanılan '
                      'Los Angeles, Melekler şehri olarak bilinir ve en çok tanınan destinasyondur. Los Angeles şehir merkezine giderken Santa Monica İskelesi\'nden geçebilirsiniz. '
                      'Ünlü Hollywood tabelasına bakarak gün batımını izlemek de yapılacaklar listenizde mutlaka olmalı.',
                      style: GoogleFonts.azeretMono(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    // Las Vegas
                    Text(
                      'Las Vegas',
                      style: GoogleFonts.azeretMono(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 10),
                    Image.network(
                      'https://i.hizliresim.com/f33v13r.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'BD\'de ziyaret edilecek en iyi yerlerin hiçbir listesi, muhteşem Las Vegas\'ı dahil etmeden tamamlanmış sayılmaz. '
                      '“Günah Şehri” lakaplı Las Vegas, parti müdavimlerinin cennetidir. Kasabada bir gece geçirmek için meşhur Strip\'e gitmeden önce birçok kumarhaneden birinde şansınızı test edin, '
                      'düşene kadar alışveriş yapın, dünyaca ünlü restoranlarda yemek yiyebilir veya bir gösteri için bir bilet satın alabilirsiniz.',
                      style: GoogleFonts.azeretMono(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    // Washington
                    Text(
                      'Washington',
                      style: GoogleFonts.azeretMono(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(height: 10),
                    Image.network(
                      'https://i.hizliresim.com/6g1cmq9.jpg',
                      fit: BoxFit.cover,
                      height: 200,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Amerika’da gezilecek yerler listesinin olmazsa olmazı Washington, Amerika Birleşik Devletleri\'nin başkentidir ve ziyaretçilere ülkenin tarihine ve hükümetine bir bakış sunar. '
                      'Lincoln Anıtı, Beyaz Saray ve ABD Kongre Binası gibi ikonik anıtlar, 11 Smithsonian Müzesi\'nden birinde eğitim alanlarının yanı sıra çok sayıda gezi fırsatı sunmaktadır.',
                      style: GoogleFonts.azeretMono(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    // Diğer gezilecek yerlerin eklenmesi
                  ],
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: SizedBox(
                      width: 400,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HolidayPollApp(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Teste Geri Dön ',
                            style: GoogleFonts.azeretMono(
                              fontSize: 16,
                              shadows: [
                                Shadow(
                                  blurRadius: 5,
                                  color: Colors.grey,
                                ),
                              ],
                            ).copyWith(
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
