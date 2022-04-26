import 'package:flutter/material.dart';

class HotCollectionCard extends StatelessWidget {
  const HotCollectionCard({Key? key, required this.name, required this.nftType, required this.image})
      : super(key: key);

  final String name;
  final String nftType;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 120,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[800],
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/collections/$image"),
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey[200],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            image,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}
