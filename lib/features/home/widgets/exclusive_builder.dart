import 'package:flutter/material.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/core/utils/text_styles.dart';
import 'package:necture_ui/features/home/models/product_model.dart';
import 'package:necture_ui/features/home/widgets/product_cart.dart';

class ExclusiveBuilder extends StatelessWidget {
  const ExclusiveBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Exclusive Offer", style: TextStyles.titleStyle()),
            TextButton(
              onPressed: () {},
              child: Text(
                "See All",
                style: TextStyles.bodyStyle(
                  color: Appcolor.primaryColor,
                  fontweight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
              height: 243,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductCart(model: products[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 15);
                },
                itemCount: products.length,
              ),
            ),
      ],
    );
  }
}
