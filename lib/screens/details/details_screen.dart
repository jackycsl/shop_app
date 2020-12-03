import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: kIsWeb
              ? Image.network('assets/icons/back.svg', color: Colors.white)
              : SvgPicture.asset('assets/icons/back.svg', color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: kIsWeb
                ? Image.network(
                    'assets/icons/search.svg',
                    color: Colors.white,
                  )
                : SvgPicture.asset('assets/icons/search.svg',
                    color: kTextColor),
            onPressed: () {},
          ),
          IconButton(
            icon: kIsWeb
                ? Image.network(
                    'assets/icons/cart.svg',
                    color: Colors.white,
                  )
                : SvgPicture.asset('assets/icons/cart.svg',
                    color: Colors.white),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPaddin / 2)
        ]);
  }
}
