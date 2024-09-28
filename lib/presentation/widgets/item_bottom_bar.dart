import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shoe_store/presentation/widgets/bottom_cart_sheet.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class ItemBottomBar extends StatelessWidget {
  const ItemBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: const Color(0xFFF5F9FD),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // add to cart button
          _buildAddToCartButton(),
          // shopping bag button
          _buildShoppingBagButton(context),
        ],
      ),
    );
  }
  Widget _buildAddToCartButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
          color: const Color(0xFF475269),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF475269).withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ]
      ),
      child: Row(
        children: [
          Text(
            "Add To Cart",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 10),
          Icon(
            CupertinoIcons.cart_badge_plus,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }

  Widget _buildShoppingBagButton(context) {
    return InkWell(
      onTap: () {
        showSlidingBottomSheet(
            context,
            builder: (context) {
              return SlidingSheetDialog(
                  elevation: 8,
                  cornerRadius: 16,
                  builder: (context, state) {
                    return const BottomCartSheet();
                  }
              );
            }
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
            color: const Color(0xFF475269),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF475269).withOpacity(0.3),
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ]
        ),
        child: const Icon(
            Icons.shopping_bag,
            color: Colors.white,
            size: 45
        ),
      ),
    );
  }
}
