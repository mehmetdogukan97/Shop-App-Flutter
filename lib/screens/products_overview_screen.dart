import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

enum FiltersOptions{
  Favorites,
  All
}

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: (FiltersOptions  selectedItem) {
              if(selectedItem == FiltersOptions.Favorites){

              }else{

              }
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: FiltersOptions.Favorites,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FiltersOptions.All,
              ),

            ],
          )
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
