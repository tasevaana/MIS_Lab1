import 'package:flutter/material.dart';
import 'package:lab1/model/Makeup_model.dart';
import 'package:lab1/widgets/makeup_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Makeup> makeup = [
    Makeup(id: 1, name: "MAC Lipstick", img: 'https://sdcdn.io/mac/gb/mac_sku_M0N904_1x1_0.png?width=1440&height=1440', details: 'A long-wearing Lipstick formula with intense colour payoff and a completely matte finish', price: 1200),
    Makeup(id: 2, name: "Maybelline Foundation", img: 'https://m.media-amazon.com/images/I/71+xNY6nI7L.jpg', details: 'Maybelline Fit Me Matte Foundation: For a natural looking medium coverage liquid foundation makeup, look no further; In 40 shades, youll find a fit for every skin tone; Best for normal to oily skin; refines pores for a natural looking matte finish', price: 600),
    Makeup(id: 4, name: "Essence Mascara", img: 'https://cdn2.parfumdreams.de/image/product/64774-0-0-0.webp?box=528', details: 'Mega volume and length with little effort and a great brush', price: 120),
    Makeup(id: 5, name: "KIKO Milano Eyeliner", img: 'https://images.kikocosmetics.com/sys-master/images/h28/hb3/12889257443358/KM0030201900144principale_900Wx900H.webp', details: 'Its soft and flexible tip reliably follows the eye contour, allowing for an absolutely clean and precise line, with buildable thickness', price: 500)
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 243, 139, 232),
          leading: IconButton(onPressed: () {},
              icon: const Icon(Icons.menu, color: Colors.white, size: 24,)),
          title: const Text("Makeup App", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {},
                icon: const Icon(Icons.settings, color: Colors.white, size: 24))
          ],
        ),
      body: MakeupGrid(makeup: makeup),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}