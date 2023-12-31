import 'package:catalog_app/pages/home_details_page.dart';
import 'package:flutter/material.dart';
import '../../models/catalog.dart';
import 'discovery_item.dart';

class MyDiscoveryList extends StatelessWidget {
  const MyDiscoveryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 4,
        );
      },
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final discovery = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailsPage(games: discovery),
            ),
          ),
          child: MyDiscoveryItem(discovery: discovery),
        );
      },
    );
  }
}
