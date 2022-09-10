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
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 34,
                  ),
                  Text(
                    "Discover",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 23.0),
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
              //search bar
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
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
              Column(
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
              const SizedBox(
                height: 20,
              ),
              Card(
                color: const Color(0xffDFEDE4),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
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
                        "assets/images/images/pot.jpg",
                        fit: BoxFit.fill,
                      ))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      child: Column(),
                    )
                  ],
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
