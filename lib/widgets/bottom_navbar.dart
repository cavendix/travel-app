part of 'widgets.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/home_icon.png',
          width: 20,
          height: 20,
        ),
        SizedBox(
          width: 7,
        ),
        Text('Home',
            style: yellowTextStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            )),
        SizedBox(
          width: 30,
        ),
        Image.asset(
          'assets/notif_icon_normal.png',
          width: 20,
          height: 20,
        ),
        SizedBox(
          width: 40,
        ),
        Image.asset(
          'assets/menu_icon_normal.png',
          width: 20,
          height: 20,
        ),
        SizedBox(
          width: 40,
        ),
        Image.asset(
          'assets/setting_icon_normal.png',
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}
