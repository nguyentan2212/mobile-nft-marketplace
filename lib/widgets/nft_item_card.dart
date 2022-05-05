import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_nft_marketplace/models/nft_item.dart';

class NFTItemCard extends StatefulWidget {
  final NFTItem item;
  const NFTItemCard({Key? key, required this.item}) : super(key: key);

  @override
  State<NFTItemCard> createState() => _NFTItemCardState();
}

class _NFTItemCardState extends State<NFTItemCard> {
  bool isLiked = false;

  void like() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[800],
      ),
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("assets/images/items/${widget.item.image}"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  widget.item.collectionName,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[400],
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  widget.item.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[200],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/ethereum.svg',
                      height: 14,
                      width: 14,
                      color: Colors.grey[200],
                    ),
                    Text(
                      widget.item.price.toString(),
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[200]),
                    ),
                  ],
                ),
                Material(
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: like,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        isLiked
                            ? Icon(
                                CupertinoIcons.heart_fill,
                                size: 14,
                                color: Colors.grey[400],
                              )
                            : Icon(
                                CupertinoIcons.heart,
                                size: 14,
                                color: Colors.grey[400],
                              ),
                        Text(
                          widget.item.likeCount.toString(),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
