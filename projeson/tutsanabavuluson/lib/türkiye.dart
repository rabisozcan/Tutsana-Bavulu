import 'package:flutter/material.dart';
import 'main2.dart';

void main() {
  runApp(MaterialApp(
    home: TurkiyePage(),
  ));
}

class TurkiyePage extends StatefulWidget {
  @override
  _TurkiyePageState createState() => _TurkiyePageState();
}

class _TurkiyePageState extends State<TurkiyePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('ÜZGÜNÜZ')),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.orange],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Image.network(
                  'https://i.hizliresim.com/dtozpv5.jpg',
                  height: 300,
                  width: 700,
                ),
                SizedBox(height: 20),
                Text(
                  'Üzgünüm dostum, sen bu tatil evde kalmalısın.',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HolidayPollApp()),
                    );
                  },
                  child: Text('Teste Geri Dön'),
                ),
                // Diğer widget'lar buraya eklenebilir
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(0,
              duration: Duration(seconds: 1), curve: Curves.easeInOut);
        },
        child: Icon(Icons.arrow_upward),
        backgroundColor: Colors.blue,
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
