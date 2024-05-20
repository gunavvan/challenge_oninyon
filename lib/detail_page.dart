import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String pageName;

  const DetailPage({super.key, required this.pageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.network(
                      "https://oninyon.com/images/bob/logo.png",
                      width: 200,
                      height: 200),
                ),
                Text("Bagian $pageName",
                    style: TextStyle(
                      fontSize: 14,
                    )),
                SizedBox(height: 10),
                Text(
                    "Detail Sejarah Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(
                      fontSize: 14,
                    )),
                SizedBox(height: 10),
                Text("To do"),
                SizedBox(height: 10),
                Text(
                    "Detail Sejarah Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(
                      fontSize: 14,
                    )),
                SizedBox(height: 10),
                Text("To do"),
                SizedBox(height: 10),
                Text(
                    "Detail Sejarah Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(
                      fontSize: 14,
                    ))
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Selamat Datang'),
                  content: const SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text('Terima Kasih telah bergabung dengan kami'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.blueAccent),
          ),
          child: Text(
            "Join Us",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          )),
    );
  }
}
