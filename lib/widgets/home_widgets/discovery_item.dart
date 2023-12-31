import 'package:flutter/material.dart';
import '../../models/catalog.dart';
import '../themes.dart';

class MyDiscoveryItem extends StatelessWidget {
  final Item discovery;
  const MyDiscoveryItem({super.key, required this.discovery});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 150,
      color: Colors.deepPurple,
      child: Stack(
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 0.75,
                child: Hero(tag: Key(discovery.id.toString()),
                  child: Image.network(
                    discovery.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -3,
            left: 35, 
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 75,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade300,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    '\$${discovery.price.toString()}',
                    style: MyTheme().s,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
