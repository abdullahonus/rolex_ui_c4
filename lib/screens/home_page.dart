import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double sizeHeigh = MediaQuery.of(context).size.height;
    double sizeWidht = MediaQuery.of(context).size.width;
    bool _isBluetoothOn = false;
    Icon firstIcon = const Icon(Icons.home_outlined);
    Icon secondIcon = const Icon(Icons.home);
////////////////////////////////////////////
    ///follor For more ig: @Countrol4offical
    ///@countrolfour@gmail.com
////////////////////////////////////////////
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white70.withOpacity(0.9),
        bottomNavigationBar: SizedBox(
          width: 50,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home,
                  size: 35,
                ),
                color: const Color(0xff7DAC97),
                onPressed: () {
                  if (_isBluetoothOn == false) {
                    firstIcon;
                  } else {
                    secondIcon;
                  }
                  setState(() {
                    _isBluetoothOn = !_isBluetoothOn;
                  });
                },
              ),
              const Icon(
                Icons.compass_calibration,
                color: Colors.black,
                size: 35,
              ),
              const Icon(
                Icons.card_travel_rounded,
                color: Colors.black,
                size: 35,
              ),
              const Icon(
                Icons.bookmark_added_rounded,
                color: Colors.black,
                size: 35,
              ),
              const Icon(
                Icons.person_outline_sharp,
                color: Colors.black,
                size: 35,
              )
            ],
          ),
        ),
        body: SizedBox(
          width: sizeWidht * 1,
          height: sizeHeigh * 1,
          child: Column(
            children: [
              Positioned(
                  left: 10,
                  right: 10,
                  top: 160,
                  child: Container(
                    width: 260,
                    height: 60,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/pngegg.png"),
                    )),
                  )),
              const Padding(
                padding: EdgeInsets.only(top: 19),
                child: Text(
                  "Discover \n premium watches",
                  style: TextStyle(
                      fontFamily: "serif",
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: TextFormField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search watches, brands',
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 4,
                      color: Color(0xff7DAC97),
                    ),
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                  ),
                  suffixIcon: Container(
                    decoration: (const BoxDecoration(
                        color: Color(0xff5DAC97),
                        borderRadius: BorderRadius.all(Radius.circular(30)))),
                    width: 20,
                    child: Row(
                      children: [
                        IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.filter_alt_rounded,
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 110,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color(0xff5DAC97),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        "Luxury",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "serif",
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        "Casual",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "serif",
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 13),
                      child: Text(
                        "Formal",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "serif",
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 350,
                height: 390,
                child: GridView.count(
                  childAspectRatio: (0.6),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 25,
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff5DAC97).withOpacity(0.4),
                                spreadRadius: 8,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 1,
                              right: 1,
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/s7.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 2,
                                top: 2,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.card_giftcard_rounded,
                                      color: Colors.grey,
                                    ))),
                            const Positioned(
                                bottom: 50,
                                right: 58,
                                child: Text(
                                  "Rolex",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 15,
                                      color: Colors.grey),
                                )),
                            const Positioned(
                                bottom: 28,
                                right: 28,
                                child: Text(
                                  "SEA-DWELLER",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Positioned(
                                bottom: 5,
                                right: 55,
                                child: Text(
                                  "\$11,196",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Color(0xff5DAC97),
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff5DAC97).withOpacity(0.4),
                                spreadRadius: 8,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 1,
                              right: 1,
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/s4.png"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 2,
                                top: 2,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.card_giftcard_rounded,
                                      color: Colors.grey,
                                    ))),
                            const Positioned(
                                bottom: 45,
                                right: 58,
                                child: Text(
                                  "Rolex",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 15,
                                      color: Colors.grey),
                                )),
                            const Positioned(
                                bottom: 28,
                                right: 35,
                                child: Text(
                                  "DATEJUST 36",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Positioned(
                                bottom: 5,
                                right: 55,
                                child: Text(
                                  "\$10,586",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Color(0xff5DAC97),
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff5DAC97).withOpacity(0.4),
                                spreadRadius: 8,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 1,
                              right: 1,
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/s5.png"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 2,
                                top: 2,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.card_giftcard_rounded,
                                      color: Colors.grey,
                                    ))),
                            const Positioned(
                                bottom: 45,
                                right: 58,
                                child: Text(
                                  "Rolex",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 15,
                                      color: Colors.grey),
                                )),
                            const Positioned(
                                bottom: 28,
                                right: 20,
                                child: Text(
                                  "SMALLTOWN 45",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Positioned(
                                bottom: 5,
                                right: 55,
                                child: Text(
                                  "\$9,996",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Color(0xff5DAC97),
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff5DAC97).withOpacity(0.4),
                                spreadRadius: 8,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 1,
                              right: 1,
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/s6.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 2,
                                top: 2,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.card_giftcard_rounded,
                                      color: Colors.grey,
                                    ))),
                            const Positioned(
                                bottom: 50,
                                right: 58,
                                child: Text(
                                  "Rolex",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 15,
                                      color: Colors.grey),
                                )),
                            const Positioned(
                                bottom: 28,
                                right: 45,
                                child: Text(
                                  "RAİNBOW",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Positioned(
                                bottom: 5,
                                right: 55,
                                child: Text(
                                  "\$15,196",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Color(0xff5DAC97),
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff5DAC97).withOpacity(0.4),
                                spreadRadius: 8,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 1,
                              right: 1,
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/s8.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 2,
                                top: 2,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.card_giftcard_rounded,
                                      color: Colors.grey,
                                    ))),
                            const Positioned(
                                bottom: 50,
                                right: 58,
                                child: Text(
                                  "Rolex",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 15,
                                      color: Colors.grey),
                                )),
                            const Positioned(
                                bottom: 28,
                                right: 40,
                                child: Text(
                                  "GOLD RAİN",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Positioned(
                                bottom: 5,
                                right: 55,
                                child: Text(
                                  "\$15,196",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Color(0xff5DAC97),
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff5DAC97).withOpacity(0.4),
                                spreadRadius: 8,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 1,
                              right: 1,
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/s9.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 2,
                                top: 2,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.card_giftcard_rounded,
                                      color: Colors.grey,
                                    ))),
                            const Positioned(
                                bottom: 45,
                                right: 58,
                                child: Text(
                                  "Rolex",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 15,
                                      color: Colors.grey),
                                )),
                            const Positioned(
                                bottom: 28,
                                right: 35,
                                child: Text(
                                  "ORDERTIME",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Positioned(
                                bottom: 5,
                                right: 55,
                                child: Text(
                                  "\$13,196",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Color(0xff5DAC97),
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff5DAC97).withOpacity(0.4),
                                spreadRadius: 8,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 1,
                              right: 1,
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/s2.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 2,
                                top: 2,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.card_giftcard_rounded,
                                      color: Colors.grey,
                                    ))),
                            const Positioned(
                                bottom: 50,
                                right: 56,
                                child: Text(
                                  "Rolex",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 15,
                                      color: Colors.grey),
                                )),
                            const Positioned(
                                bottom: 28,
                                right: 28,
                                child: Text(
                                  "SEA-DWELLER",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Positioned(
                                bottom: 5,
                                right: 55,
                                child: Text(
                                  "\$18,196",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Color(0xff5DAC97),
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xff5DAC97).withOpacity(0.4),
                                spreadRadius: 8,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 1,
                              right: 1,
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/s10.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 2,
                                top: 2,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.card_giftcard_rounded,
                                      color: Colors.grey,
                                    ))),
                            const Positioned(
                                bottom: 50,
                                right: 58,
                                child: Text(
                                  "Rolex",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 15,
                                      color: Colors.grey),
                                )),
                            const Positioned(
                                bottom: 28,
                                right: 28,
                                child: Text(
                                  "WHİTE-HOUSE",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                            const Positioned(
                                bottom: 5,
                                right: 55,
                                child: Text(
                                  "\$11,196",
                                  style: TextStyle(
                                      fontFamily: "serif",
                                      fontSize: 13,
                                      color: Color(0xff5DAC97),
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
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
