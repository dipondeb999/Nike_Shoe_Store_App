import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:nike_shoe_store/presentation/widgets/all_items_widget.dart';
import 'package:nike_shoe_store/presentation/widgets/home_bottom_bar.dart';
import 'package:nike_shoe_store/presentation/widgets/raw_items_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // build custom appBar
              _buildCustomAppBar(),
              const SizedBox(height: 15),
              // build search bar
              _buildSearchBar(),
              const SizedBox(height: 15),
              // Raw items widget
              const RawItemsWidgets(),
              const SizedBox(height: 20),
              // all items widget
              const AllItemsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
  Widget _buildCustomAppBar() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: const Color(0xFFF9F5FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF475269),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]
            ),
            child: const Icon(
              Icons.sort,
              color: Color(0xFF475269),
              size: 30,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: const Color(0xFFF9F5FD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF475269),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]
            ),
            child:  const badges.Badge(
              badgeContent: Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.notifications,
                color: Color(0xFF475269),
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 55,
      decoration: BoxDecoration(
          color: const Color(0xFFF9F5FD),
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
          Container(
            width: 270,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
              ),
            ),
          ),
          const Icon(
            Icons.search,
            color: Color(0xFF475269),
            size: 27,
          ),
        ],
      ),
    );
  }
}
