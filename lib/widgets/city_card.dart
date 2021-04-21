part of 'widgets.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard(this.city);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 170,
        width: 120,
        color: yellowColor,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPage()),
            );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    city.imageUrl,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  city.isPopular
                      ? Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 64,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30)),
                              color: yellowColor,
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/star_icon.png',
                                width: 18,
                                height: 18,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                city.name,
                style: blackTextStyle.copyWith(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
