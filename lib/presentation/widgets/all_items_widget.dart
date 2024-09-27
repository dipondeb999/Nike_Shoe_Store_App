import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllItemsWidget extends StatelessWidget {
  const AllItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        for (int i=1; i<5; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F9FD),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "ItemScreen");
                  },
                  child: Image.asset(
                      "assets/images/$i.png",
                    height: 130,
                    width: 130,
                  ),
                ),
                const Text(
                  "Nike Shoe",
                  style: TextStyle(
                    color: Color(0xFF475269),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "New Nike Shoe For Men",
                  style: TextStyle(
                    color: const Color(0xFF475269).withOpacity(0.7),
                    fontSize: 15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "\$55",
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        CupertinoIcons.cart_fill_badge_plus,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}
