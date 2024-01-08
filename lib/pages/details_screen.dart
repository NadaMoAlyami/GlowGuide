import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:glowguide/pages/products.dart';
import 'package:glowguide/constants.dart';
import 'package:glowguide/pages/descriptionProduct.dart';
import 'package:glowguide/pages/product_title_with_image.dart';

/*import 'components/add_to_cart.dart';
import 'components/color_and_size.dart';
import 'components/counter_with_fav_btn.dart';

*/
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final products product;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each product have a color
      //backgroundColor: product.color,
      appBar: AppBar(
        // backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"),
            onPressed: () {},
          ),
          SizedBox(width: kDefultPadding / 2)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefultPadding,
                      right: kDefultPadding,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        //ColorAndSize(product: product),
                        SizedBox(height: kDefultPadding / 2),
                        Description(product: product),
                        SizedBox(height: kDefultPadding / 2),
                        //CounterWithFavBtn(),
                        SizedBox(height: kDefultPadding / 2),
                        // AddToCart(product: product)
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
