import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nike_shoe_store/presentation/widgets/item_bottom_bar.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // appBar
              _buildAppBar(context),
              const SizedBox(height: 15),
              // image section
              _buildImageSection(context),
              // description
              _buildDescriptionSection(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const ItemBottomBar(),
    );
  }

  Widget _buildAppBar(context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xFFF9F5FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ]),
              child: const Icon(
                Icons.arrow_back,
                color: Color(0xFF475269),
                size: 30,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: const Color(0xFFF9F5FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]),
            child: const Icon(
              Icons.favorite,
              color: Colors.redAccent,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageSection(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.43,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, right: 70),
            height: 230,
            width: 230,
            decoration: BoxDecoration(
              color: const Color(0xFF475269),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Image.asset(
            "assets/images/1.png",
            height: 350,
            width: 350,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xFFF5F9FD),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF475269).withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ]),
      child: _buildDescriptionText(),
    );
  }

  Widget _buildDescriptionText() {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "New Nike Shoe",
              style: TextStyle(
                color: Color(0xFF475269),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "\$55",
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        _buildRatingSection(),
        const SizedBox(height: 20),
        const Text(
          "This is description of the shoe product. This is description of the shoe product. This is description of the shoe product. This is description of the shoe product.",
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Color(0xFF475269),
          ),
        ),
        const SizedBox(height: 20),
        _buildItemsSizeSection(),
      ],
    );
  }

  Widget _buildRatingSection() {
    return Container(
      alignment: Alignment.centerLeft,
      child: RatingBar.builder(
        initialRating: 4,
        minRating: 1,
        direction: Axis.horizontal,
        itemSize: 20,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4),
        itemBuilder: (context, _) {
          return const Icon(
            Icons.favorite,
            color: Colors.redAccent,
          );
        },
        onRatingUpdate: (index) {},
      ),
    );
  }

  Widget _buildItemsSizeSection() {
    return Row(
      children: [
        const Text(
          "Size: ",
          style: TextStyle(
            color: Color(0xFF475269),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 10),
        Row(
          children: [
            for (int i = 5; i < 10; i++)
              Container(
                margin:
                const EdgeInsets.symmetric(horizontal: 5),
                height: 35,
                width: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F9FD),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF475269)
                          .withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Text(
                  i.toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
