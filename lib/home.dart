import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Widget'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              // memperbesar gambar saat di klik
              Navigator.push(context,
               MaterialPageRoute(builder: (context) => const Mobil1()));
            },
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Hero(
                      tag: 'Mobil1', 
                    child: Image(
                      image: AssetImage('mobil/mobil1.jpg'),                                                
                      fit: BoxFit.fill,
                      height: 80,
                      width: 80,
                      ),
                  ),
                  title: Text('Mobil 1'),
                  subtitle: Text('Rp.500.000.000.-'),
                  )
                ],
            ),
          )
          ),
        ],
      ),
    );
  }
} 


//hero
class Mobil1 extends StatelessWidget {
  const Mobil1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobil1'),
      ),
      body: const Center(
        child: Hero(
          tag: 'Mobil1', 
          child: Image(
            image: AssetImage('mobil/mobil1.jpg'),
            ),
            ),
      ),
    );
  }
}


