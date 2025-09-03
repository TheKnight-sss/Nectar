import 'package:flutter/material.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/core/utils/text_styles.dart';
import 'package:necture_ui/features/home/models/product_model.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({super.key, required this.model});
  final ProductModel model;

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.model.image,
                  width: 110,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              widget.model.name,
              style: TextStyles.bodyStyle(fontweight: FontWeight.w600),
            ),
            SizedBox(height: 5),
            Text(
              "\$${widget.model.quantity}kg",
              style: TextStyles.smallStyle(fontweight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${(widget.model.price * widget.model.quantity).toStringAsFixed(2)}",
                  style: TextStyles.bodyStyle(
                    fontweight: FontWeight.w600,
                    color: Appcolor.primaryColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.model.quantity++;
                    });
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
