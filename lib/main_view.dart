import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oninyon_challenge/detail_page.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tentang Kami'),
          bottom: TabBar(
            labelColor: Colors.redAccent,
            indicatorColor: Colors.redAccent,
            tabs: [
              Tab(text: 'Sejarah Perusahaan'),
              Tab(text: 'Tim Kami'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SejarahPerusahaanTab(),
            TimKamiTab(),
          ],
        ),
      ),
    );
  }
}

class SejarahPerusahaanTab extends StatelessWidget {
  final List<String> imageUrls = [
    'https://oninyon.com/images/porto/thumb_adopsi.jpg',
    'https://oninyon.com/images/porto/thumb_rianty.jpg',
    'https://oninyon.com/images/porto/thumb_vegan.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://oninyon.com/images/office/24.jpg",
            errorBuilder: (context, error, stackTrace) =>
                CircularProgressIndicator(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Adopsi",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            height: 200, // Set a height for the container
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                        ),
                      ],
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              imageUrls[index],
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text("Portofolio $index")
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TimKamiTab extends StatelessWidget {
  final List<String> imageUrls = [
    'https://oninyon.com/images/porto/thumb_adopsi.jpg',
    'https://oninyon.com/images/porto/thumb_rianty.jpg',
    'https://oninyon.com/images/porto/thumb_vegan.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Detail Sejarah Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListView.builder(
            itemCount: imageUrls.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => DetailPage(pageName: index.toString(),)),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                        ),
                      ],
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              imageUrls[index],
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text("Item $index"),
                        Text(
                          'Detail Sejarah Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
