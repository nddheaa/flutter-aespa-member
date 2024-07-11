import 'bio/biodata.dart';
import 'bio/biodata.dart';
import 'detail_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          backgroundColor: const Color(0xFFC48BF1),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.diamond,
              color: Colors.black,
            ),
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return const AespaList();
            } else {
              return const AespaGrid();
            }
          },
        ));
  }
}

class AespaList extends StatelessWidget {
  const AespaList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Be My Æ',
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'Welcome to ÆSPA World',
                    style: TextStyle(color: Colors.black, fontSize: 45),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                      'aespa is a South Korean girl group formed by SM Entertainment in 2020. The group consists of four members: Karina, Giselle, Winter, and Ningning. What makes aespa unique is their concept of combining the virtual world with reality, utilizing the concept of "avatar" and "ae." Each member has both a real-life counterpart and a virtual avatar, allowing them to exist in both the physical and virtual realms.'),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.star, color: Colors.purple),
                          hintText: 'type anything',
                          hintStyle: TextStyle(
                              color: Color(0xFFC48BF1), fontSize: 15)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'Welcome MY, to Aespa World',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 200,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          memberCard2('images/aespa2.jpeg'),
                          memberCard('images/karina.jpg'),
                          memberCard2('images/aespa5.jpg'),
                          memberCard('images/giselle.jpg'),
                          memberCard2('images/aespa3.jpeg'),
                          memberCard('images/winter.jpg'),
                          memberCard2('images/aespa4.jpg'),
                          memberCard('images/ningning.jpg'),
                          memberCard2('images/aespa3.jpg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.diamond,
                              color: Color(0xFFC48BF1),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Members",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              Icons.diamond,
                              color: Color(0xFFC48BF1),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 2,
                            crossAxisSpacing: 20,
                          ),
                          // scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          shrinkWrap: true,

                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            final Biodata aespa = biodataList[index];
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 9.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) {
                                    return DetailScreen(biodata: aespa);
                                  })));
                                },
                                child: Container(
                                  height: 500,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(aespa.imageAsset),
                                      fit: BoxFit.cover,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomRight,
                                          stops: [
                                            0.3,
                                            0.9
                                          ],
                                          colors: [
                                            Colors.purple.withOpacity(.8),
                                            Colors.purple.withOpacity(.2)
                                          ]),
                                    ),
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          aespa.name,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AespaGrid extends StatelessWidget {
  const AespaGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Be My Æ',
                    style: TextStyle(color: Colors.black87, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'Welcome to ÆSPA World',
                    style: TextStyle(color: Colors.black, fontSize: 45),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                      'aespa is a South Korean girl group formed by SM Entertainment in 2020. The group consists of four members: Karina, Giselle, Winter, and Ningning. What makes aespa unique is their concept of combining the virtual world with reality, utilizing the concept of "avatar" and "ae." Each member has both a real-life counterpart and a virtual avatar, allowing them to exist in both the physical and virtual realms.'),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.star, color: Colors.purple),
                          hintText: 'type anything',
                          hintStyle: TextStyle(
                              color: Color(0xFFC48BF1), fontSize: 15)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'Welcome MY, to Aespa World',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 200,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          memberCard2('images/aespa2.jpeg'),
                          memberCard('images/karina.jpg'),
                          memberCard2('images/aespa5.jpg'),
                          memberCard('images/giselle.jpg'),
                          memberCard2('images/aespa3.jpeg'),
                          memberCard('images/winter.jpg'),
                          memberCard2('images/aespa4.jpg'),
                          memberCard('images/ningning.jpg'),
                          memberCard2('images/aespa3.jpg'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SingleChildScrollView(
                    child: ListView.builder(
                      // scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      shrinkWrap: true,

                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final Biodata aespa = biodataList[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 9.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: ((context) {
                                return DetailScreen(biodata: aespa);
                              })));
                            },
                            child: Container(
                              height: 500,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(aespa.imageAsset),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomRight,
                                      stops: [
                                        0.3,
                                        0.9
                                      ],
                                      colors: [
                                        Colors.purple.withOpacity(.8),
                                        Colors.purple.withOpacity(.2)
                                      ]),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Text(
                                      aespa.name,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget memberCard(image) {
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: Container(
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.2,
            0.9
          ], colors: [
            Colors.purple.withOpacity(.8),
            Colors.purple.withOpacity(.2)
          ]),
        ),
      ),
    ),
  );
}

Widget memberCard2(image) {
  return AspectRatio(
    aspectRatio: 4 / 2.62,
    child: Container(
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.2,
            0.9
          ], colors: [
            Colors.purple.withOpacity(.8),
            Colors.purple.withOpacity(.2)
          ]),
        ),
      ),
    ),
  );
}
