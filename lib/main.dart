import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', 
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nilaiController1 = TextEditingController();
  TextEditingController nilaiController2 = TextEditingController();
  TextEditingController nilaiController3 = TextEditingController();
  TextEditingController nilaiController4 = TextEditingController();
  TextEditingController nilaiController5 = TextEditingController();
  TextEditingController nilaiController6 = TextEditingController();
  TextEditingController sksController1 = TextEditingController();
  TextEditingController sksController2 = TextEditingController();
  TextEditingController sksController3 = TextEditingController();
  TextEditingController sksController4 = TextEditingController();
  TextEditingController sksController5 = TextEditingController();
  TextEditingController sksController6 = TextEditingController();

  double hitungIP(double nilai) {
    if (nilai >= 85 && nilai <= 100) {
      return 4;
    } else if (nilai >= 75 && nilai <= 84) {
      return 3.5;
    } else if (nilai >= 65 && nilai <= 74) {
      return 3;
    } else if (nilai >= 55 && nilai <= 64) {
      return 2.5;
    } else if (nilai >= 45 && nilai <= 54) {
      return 2;
    } else if (nilai >= 35 && nilai <= 44) {
      return 1.5;
    } else if (nilai > 0 && nilai <= 34) {
      return 1;
    } else {
      return 0;
    }
  }

   void tampil() {
    double nilai1 = double.parse(nilaiController1.text);
    int sks1 = int.parse(sksController1.text);
    double nilai2 = double.parse(nilaiController2.text);
    int sks2 = int.parse(sksController2.text);
    double nilai3 = double.parse(nilaiController3.text);
    int sks3 = int.parse(sksController3.text);
    double nilai4 = double.parse(nilaiController4.text);
    int sks4 = int.parse(sksController4.text);
    double nilai5 = double.parse(nilaiController5.text);
    int sks5 = int.parse(sksController5.text);
    double nilai6 = double.parse(nilaiController6.text);
    int sks6 = int.parse(sksController6.text);

    double ip1 = hitungIP(nilai1);
    double ip2 = hitungIP(nilai2);
    double ip3 = hitungIP(nilai3);
    double ip4 = hitungIP(nilai4);
    double ip5 = hitungIP(nilai5);
    double ip6 = hitungIP(nilai6);

    double totalIP = (ip1 * sks1) + (ip2 * sks2) + (ip3 * sks3) + (ip4 * sks4) + (ip5 * sks5) + (ip6 * sks6);
    int totalSKS = sks1 + sks2 + sks3 + sks4 + sks5 + sks6;
    double ipRataRata = totalIP / totalSKS;
    String formattedIP = ipRataRata.toStringAsFixed(2);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Hasil IP'),
          content: Text('IP Anda: $formattedIP'),
          actions: <Widget>[
            TextButton(
              child: const Text('Tutup'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
            width: 500,
            height: 40, 
            child: TextFormField(
              controller: nilaiController1,
              decoration: const InputDecoration(
              hintText: 'Masukkan Nilai',
              labelText: 'Nilai Workshop Mobile',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            Container(
            width: 500,
            height: 40,
            child: TextFormField(
              controller: sksController1,
              decoration: const InputDecoration(
              hintText: 'Masukkan Sks',
              labelText: 'Bobot Sks',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            SizedBox(height: 4),

            Container(
            width: 500,
            height: 40,
            child: TextFormField(
              controller: nilaiController2,
              decoration: const InputDecoration(
              hintText: 'Masukkan Nilai',
              labelText: 'Nilai Kewirausahaan',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            Container(
            width: 500,
            height: 40,
            child: TextFormField(
              controller: sksController2,
              decoration: const InputDecoration(
              hintText: 'Masukkan Sks',
              labelText: 'Bobot Sks',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            SizedBox(height: 4),

            Container(
            width: 500,
            height: 40, 
            child: TextFormField(
              controller: nilaiController3,
              decoration: const InputDecoration(
              hintText: 'Masukkan Nilai',
              labelText: 'Nilai Workshop Web',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            Container(
            width: 500,
            height: 40, 
            child: TextFormField(
              controller: sksController3,
              decoration: const InputDecoration(
              hintText: 'Masukkan Sks',
              labelText: 'Bobot Sks',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            SizedBox(height: 4),

            Container(
            width: 500,
            height: 40, 
            child: TextFormField(
              controller: nilaiController4,
              decoration: const InputDecoration(
              hintText: 'Masukkan Nilai',
              labelText: 'Nilai Struktur Data',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            Container(
            width: 500,
            height: 40, 
            child: TextFormField(
              controller: sksController4,
              decoration: const InputDecoration(
              hintText: 'Masukkan Sks',
              labelText: 'Bobot Sks',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            SizedBox(height: 4),

            Container(
            width: 500,
            height: 40, 
            child: TextFormField(
              controller: nilaiController5,
              decoration: const InputDecoration(
              hintText: 'Masukkan Nilai',
              labelText: 'Nilai Workshop Basis Data',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            Container(
            width: 500,
            height: 40, 
            child: TextFormField(
              controller: sksController5,
              decoration: const InputDecoration(
              hintText: 'Masukkan Sks',
              labelText: 'Bobot Sks',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            SizedBox(height: 4),

            Container(
            width: 500,
            height: 40, 
            child: TextFormField(
              controller: nilaiController6,
              decoration: const InputDecoration(
              hintText: 'Masukkan Nilai',
              labelText: 'Nilai English',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            Container(
            width: 500,
            height: 40, 
            child: TextFormField(
              controller: sksController6,
              decoration: const InputDecoration(
              hintText: 'Masukkan Sks',
              labelText: 'Bobot Sks',
              labelStyle: TextStyle(fontSize: 12), 
              hintStyle: TextStyle(fontSize: 12), 
            ),
            style: TextStyle(fontSize: 12)
            ),
            ),

            ElevatedButton(onPressed: tampil, child: const Text("Hitung IP")),
          ],
        ),
      ),
    );
  }
}
