import 'package:flutter/material.dart'; import 'package:newssssssssss/model/SourcesResponse.dart';

import '../../api/api_sources.dart';
import '../category_grid_view.dart';
import 'category_tabs_widget.dart';
class CategoryNewsList extends StatelessWidget {

  late Category category;

  CategoryNewsList(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: FutureBuilder<SourcesResponse>(
        future: ApiManger.getSources(category.categoryId),
        builder: (builderContext, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(),);
          }
         else if (snapshot.hasError) {
            return Center(child: Text('ERROR LOADING..... DATA${
                snapshot.error.toString()}'
            ),);
          }
         else if (snapshot.data?.status == 'error') {
            return Center(child: Text('Server Error ${
                snapshot.data?.message}'),);
          }
          var sources = snapshot.data?.sources;
           print (sources);
          return CategoryTabsWidget(sources!);
        },
      ),
    );
  }
}

//if (snapshot.data.status) {
// //
// //     return Center(child: Text('Server Error ${
// // snapshot.data.message}'),);
// //     }
//             ),);