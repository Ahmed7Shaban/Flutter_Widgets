import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imagesLink = [
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg",
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_640.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREoRGyXmHy_6aIgXYqWHdOT3KjfmnuSyxypw&s",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREoRGyXmHy_6aIgXYqWHdOT3KjfmnuSyxypw&s",
    ];

    return GridView.builder(
      itemCount: imagesLink.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4.0,
      ),
      itemBuilder: (context, index) {
        return FittedBox(child: Image.network(imagesLink[index]));
      },
    );
  }
}
