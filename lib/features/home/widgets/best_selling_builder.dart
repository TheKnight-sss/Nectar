import 'package:flutter/material.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/core/utils/text_styles.dart';
import 'package:necture_ui/features/home/models/product_model.dart';
import 'package:necture_ui/features/home/widgets/product_cart.dart';

class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Best Selling", style: TextStyles.titleStyle()),
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
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 250
          ),
          itemBuilder: (context, index) {
            return ProductCart(model: offerproducts[index]);
          },
          itemCount: offerproducts.length,
        ),
      ],
    );
  }
}
