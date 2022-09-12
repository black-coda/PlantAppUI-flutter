import 'package:flutter/material.dart';

void main() {
  runApp(const PlantShopApp());
}

class PlantShopApp extends StatelessWidget {
  const PlantShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffF4F6F8),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.menu,
                      color: Colors.black,
                      size: 34,
                    ),
                    Text(
                      "Discover",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 23.0),
                    ),
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.white24,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage("assets/images/images/solo.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
              //search bar
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xff4C6A4B),
                    focusColor: Color(0xff4C6A4B),
                    prefixIcon: Icon(
                      Icons.search_sharp,
                      color: Color(0xff4C6A4B),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: .5,
                          color: Colors.white,
                          style: BorderStyle.none),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    hintText: 'Search for a plant',
                  ),
                ),
              ),
              // Categories and Fliter button
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Categories",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CategoryWidget(
                          text: "Popular",
                          activeButton: true,
                        ),
                        CategoryWidget(text: "Indoor"),
                        CategoryWidget(text: "Outdoor"),
                        // CategoryWidget(text: "Garden")
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                color: const Color(0xffDFEDE4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 150,
                        child: Text.rich(
                          TextSpan(
                              text: 'Get\n',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18.9),
                              children: [
                                TextSpan(
                                  text: '10% ',
                                  style: TextStyle(
                                    fontSize: 35,
                                    color: Color(0xff26A961),
                                  ),
                                ),
                                TextSpan(
                                  text: 'off\n',
                                  style: TextStyle(
                                    color: Color(0xff26A961),
                                  ),
                                ),
                                TextSpan(
                                  text: 'For this month',
                                )
                              ]),
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          "assets/images/images/flowerpot.png",
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // scorll stuff sha
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  height: 225.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // shrinkWrap: true,
                    children: const [
                      ItemListBox(
                        title: 'Aloe Vera',
                        favorite: true,
                        imageUrl: 'assets/images/images/vase1.png',
                        price: 20.99,
                      ),
                      ItemListBox(
                        title: 'Snake Plant',
                        favorite: false,
                        imageUrl: 'assets/images/images/vase2.png',
                        price: 80.99,
                      ),
                      ItemListBox(
                        title: 'Waterleaf plant',
                        favorite: true,
                        imageUrl: 'assets/images/images/vase1.png',
                        price: 60.99,
                      ),
                      ItemListBox(
                        title: 'Ugwu Plant',
                        favorite: false,
                        imageUrl: 'assets/images/images/vase2.png',
                        price: 90.99,
                      ),
                      ItemListBox(
                        title: 'Lorem Plant',
                        favorite: false,
                        imageUrl: 'assets/images/images/vase1.png',
                        price: 100.99,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemListBox extends StatelessWidget {
  const ItemListBox(
      {super.key,
      required this.price,
      required this.favorite,
      required this.imageUrl,
      required this.title});
  final String imageUrl;
  final bool favorite;
  final double price;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        // height: 120,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white),
        width: 170,

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    favorite
                        ? const Icon(
                            Icons.favorite,
                            size: 25.0,
                            color: Color(0xff26A961),
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            size: 25.0,
                            color: Color(0xff26A961),
                          )
                  ],
                ),
              ),
              SizedBox(
                child: Image.asset(imageUrl),
              ),
              Container(
                height: 62.0,
                width: 153.5,
                decoration: const BoxDecoration(
                    color: Color(0xffF4F6F8),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [Text("\$$price")],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {super.key, required this.text, this.activeButton = false});

  final String text;
  final bool activeButton;

  @override
  Widget build(BuildContext context) {
    return activeButton
        ? Container(
            height: 37,
            width: 85,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color(0xff26A961),
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 13.5),
              ),
            ),
          )
        : Container(
            height: 37,
            width: 85,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Center(
              child: Text(
                text,
                style:
                    const TextStyle(color: Color(0xff26A961), fontSize: 13.5),
              ),
            ),
          );
  }
}
