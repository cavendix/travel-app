import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_app1/models/city.dart';
import 'package:travel_app1/models/event.dart';
import 'package:travel_app1/theme.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_app1/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  int bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 20,
                // right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/photo.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello Jess,',
                            style: whiteTextStyle.copyWith(fontSize: 16),
                          ),
                          Text(
                            'Good Morning.',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/search_icon.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Let’s enjoy your\nVacation',
                    style: whiteTextStyle.copyWith(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: edge),
                    child: Container(
                      height: 35,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CustomTabbar(
                            titles: [
                              'All',
                              'Asia',
                              'Amerika',
                              'Africa',
                              'Europe',
                              'North'
                            ],
                            selectedIndex: selectedIndex,
                            onTap: (index) {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: edge),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            'Popular Countries',
                            style: whiteTextStyle.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            'See All',
                            style: greyTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: edge),
                    child: Container(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CityCard(
                            City(
                              id: 1,
                              name: 'Bali',
                              imageUrl: 'assets/city1.png',
                              isPopular: true,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                              id: 2,
                              name: 'Paris',
                              imageUrl: 'assets/city2.png',
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                              id: 3,
                              name: 'England',
                              imageUrl: 'assets/city3.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: edge),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            'Ongoing Events',
                            style: whiteTextStyle.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            'See All',
                            style: greyTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: edge),
                    child: Container(
                      height: 205,
                      // width: 230,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          EventCard(
                            Event(
                              id: 1,
                              name: 'Rio Carnival,',
                              city: 'Rio de Jenairo',
                              country: 'Brazil',
                              imageUrl: 'assets/city_big1.png',
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          EventCard(
                            Event(
                              id: 2,
                              name: 'Sapporo Snow\nFestival',
                              city: 'Kyoto',
                              country: 'Japan',
                              imageUrl: 'assets/city_big2.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Container(
          height: 68,
          // width: MediaQuery.of(context).size.width - (2 * edge),
          // margin: EdgeInsets.symmetric(horizontal: edge),
          decoration: BoxDecoration(
              color: Color(0xff252525),
              borderRadius: BorderRadius.circular(23)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: edge),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BottomNavbar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
