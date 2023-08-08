import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ssg_demo1/user/favorite_screen/widgets/single_favorite_item.dart';

import '../../provider/app_provider.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider appProvider=Provider.of<AppProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text("Favorite"),),
      ),
      body: appProvider.getFavrtProductList.isEmpty?Center(child: Text("Empty cart."),) : ListView.builder(
          itemCount: appProvider.getFavrtProductList.length,
          padding: EdgeInsets.all(12),
          itemBuilder: (ctx,index){
            return  SingleFavoriteItem(singleProduct:appProvider.getFavrtProductList[index] ,);
          }),
    );
  }
}
