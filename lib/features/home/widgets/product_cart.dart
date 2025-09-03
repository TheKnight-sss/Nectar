import 'package:flutter/material.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/core/utils/text_styles.dart';
import 'package:necture_ui/features/home/models/product_model.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 160,
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Appcolor.borderColor2, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset(model.image)],
            ),
            SizedBox(height: 25),
            Text(model.name,
                style: TextStyles.bodyStyle(
                  fontweight: FontWeight.w600,
                )),
            SizedBox(height: 5),
            Text(
              "\$${model.quantity}kg",
              style: TextStyles.smallStyle(fontweight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${(model.price*model.quantity).toStringAsFixed(2)}",
                  style: TextStyles.bodyStyle(
                    fontweight: FontWeight.w600,
                    color: Appcolor.primaryColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    model.quantity++;
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Appcolor.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
