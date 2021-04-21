part of 'pages.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      backgroundColor: Color(0xff1A1A1A),
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 310,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/city_detail1.png'),
                      fit: BoxFit.cover),
                  // borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(40),
                  //   bottomRight: Radius.circular(40),
                  // ),
                ),
              ),
              ListView(
                children: [
                  SizedBox(
                    height: 290,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    // height: 100,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: Color(0xff1A1A1A),
                    ),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edge),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bali, Indonesia',
                                    style: yellowTextStyle.copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // SizedBox(
                                  //   height: 20,
                                  // ),
                                  Container(
                                    height: 75,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              'assets/star_icon.png',
                                              color: Color(0xffFEBE02),
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '4.92',
                                          style: whiteTextStyle,
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              'assets/cloud_icon.png',
                                              color: Color(0xffFEBE02),
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '27°C',
                                          style: whiteTextStyle,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              'assets/plane_icon.png',
                                              color: Color(0xffFEBE02),
                                              width: 20,
                                              height: 20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          '9 Jan',
                                          style: whiteTextStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    'Description',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    'Bali is famous for beaches, countless waves for\nsurfing scuba diving, natiral sites to visit and\nexplore tremely fascinating Hindus culture with\ncolorfuls ceremonies and magnificent temples\ngifted artists the producing.',
                                    style: greyTextStyle,
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 100,
                          color: Colors.black,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: edge),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Starting From',
                                          style: whiteTextStyle,
                                        ),
                                        Text(
                                          '\$500 - 750',
                                          style: yellowTextStyle.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: edge),
                                    child: Container(
                                      width: 150,
                                      height: 50,
                                      // color: yellowColor,
                                      child: RaisedButton(
                                        onPressed: () {},
                                        color: yellowColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Text(
                                          'Book Now',
                                          style: whiteTextStyle.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
