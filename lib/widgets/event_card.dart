part of 'widgets.dart';

class EventCard extends StatelessWidget {
  final Event event;

  EventCard(this.event);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Row(
              children: [
                Image.asset(
                  event.imageUrl,
                  width: 230,
                  height: 205,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  event.name,
                  style: whiteTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  event.city,
                  style: whiteTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Image.asset('assets/location_icon.png',
                        width: 14, height: 20, fit: BoxFit.cover),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      event.country,
                      style: whiteTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
