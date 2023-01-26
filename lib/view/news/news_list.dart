import 'package:flutter/material.dart';
import 'package:newssssssssss/api/api_sources.dart';
import 'package:newssssssssss/model/NewsResponse.dart';
import 'package:newssssssssss/model/Source.dart';
class NewsList extends StatelessWidget {
Sources source;
NewsList(this.source);
  @override
  Widget build(BuildContext context) {
    return Container(
child: FutureBuilder<NewsResponse>(
  future: ApiManger.getNews(source.id??''),
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

    var newsList = snapshot.data?.newsList;
    return ListView.builder(itemBuilder: (_,index){
      return Text(newsList?[index].title??'');
    },itemCount: newsList?.length??0,);
  },

),



    );
  }
}
