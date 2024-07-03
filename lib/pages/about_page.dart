import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "2106065",
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const DetailWisataPage(),
    );
  }
}

class DetailWisataPage extends StatelessWidget {
  const DetailWisataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
            const Text('My Profile'),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.grey[200],
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height - kToolbarHeight,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/IMG_1760.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: 150,
                        height: 150,
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Muhamad Abdusyukur",
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Contact Me",
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.phone,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "+6281320296731",
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.mail,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "2106065@itg.ac.id",
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Banjarwangi, Garut",
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _showDialog(context); // Menampilkan dialog saat tombol ditekan
                    },
                    child: const Text('Tombol Menarik'),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      _showSnackBar(context); // Menampilkan snackbar saat widget ditekan
                    },
                    child: const Text(
                      'Tekan widget ini untuk menampilkan Snackbar',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Dialog'),
          content: const Text('Maaf Belum ada apapun!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Tutup'),
            ),
          ],
        );
      },
    );
  }

  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(content: const Text('Snackbar ditampilkan! Hallo Saya Fahmi hehe'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}