import 'package:flutter/material.dart';

class ProductImageGallery extends StatefulWidget {
  @override
  _ProductImageGalleryState createState() => _ProductImageGalleryState();
}

class _ProductImageGalleryState extends State<ProductImageGallery> {
  bool _showFirstImage = true;

  void _toggleImage() {
    setState(() {
      _showFirstImage = !_showFirstImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            firstChild: Image.network(
                'https://via.placeholder.com/300x200?text=Front+View'),
            secondChild: Image.network(
                'https://via.placeholder.com/300x200?text=Side+View'),
            crossFadeState: _showFirstImage
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
            sizeCurve: Curves.easeInOut,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _toggleImage,
            child: const Text('Switch View'),
          ),
        ],
      ),
    );
  }
}
