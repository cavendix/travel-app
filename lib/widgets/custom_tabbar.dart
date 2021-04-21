part of 'widgets.dart';

class CustomTabbar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CustomTabbar({this.selectedIndex, @required this.titles, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 100,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 48),
            height: 1,
            color: "000000".toColor(),
          ),
          Row(
            children: titles
                .map((e) => Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (onTap != null) {
                                onTap(titles.indexOf(e));
                              }
                            },
                            child: Text(
                              e,
                              style: (titles.indexOf(e) == selectedIndex)
                                  ? yellowTextStyle.copyWith(
                                      fontWeight: FontWeight.w600, fontSize: 12)
                                  : greyTextStyle,
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 3,
                            margin: EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.5),
                              color: (titles.indexOf(e) == selectedIndex)
                                  ? "FEBE02".toColor()
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
