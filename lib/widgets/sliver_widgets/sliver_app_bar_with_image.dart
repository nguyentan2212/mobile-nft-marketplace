import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppBarWithImage extends StatelessWidget {
  const SliverAppBarWithImage({Key? key, required this.image}) : super(key: key);
  final Image image;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.grey[800],
      pinned: true,
      expandedHeight: 260,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: (() {}),
          child: const Icon(CupertinoIcons.left_chevron),
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[800],
            shape: const CircleBorder(),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ElevatedButton(
            onPressed: (() {}),
            child: const Icon(CupertinoIcons.flag),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[800],
              shape: const CircleBorder(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ElevatedButton(
            onPressed: (() {}),
            child: const Icon(Icons.share),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey[800],
              shape: const CircleBorder(),
            ),
          ),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(bottom: 0, top: 8),
        centerTitle: true,
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.grey[800]!, Colors.grey[200]!],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: image.image,
            ),
          ),
          height: 120,
          width: 120,
        ),
      ),
    );
  }
}
