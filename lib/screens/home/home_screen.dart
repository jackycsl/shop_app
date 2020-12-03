import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar());
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: kIsWeb
            ? Image.network('assets/icons/back.svg')
            : SvgPicture.asset('assets/icons/back.svg'),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: kIsWeb
              ? Image.network(
                  'assets/icons/search.svg',
                  color: kTextColor,
                )
              : SvgPicture.asset('assets/icons/search.svg', color: kTextColor),
          onPressed: () {},
        ),
        IconButton(
          icon: kIsWeb
              ? Image.network(
                  'assets/icons/cart.svg',
                  color: kTextColor,
                )
              : SvgPicture.asset('assets/icons/cart.svg', color: kTextColor),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
