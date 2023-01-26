import 'package:flutter/material.dart';
import 'package:newssssssssss/view/category/sourse_tab_item.dart';
import 'package:newssssssssss/view/news/news_list.dart';
import '../../model/Source.dart';

class CategoryTabsWidget extends StatefulWidget {
  List<Sources> sources;
  CategoryTabsWidget(this.sources);

  @override State<CategoryTabsWidget> createState() => _CategoryTabsWidgetState(); } 
class _CategoryTabsWidgetState extends State<CategoryTabsWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        child: DefaultTabController(
          length: widget.sources.length,
          child: Column(
            children: [
              TabBar(
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                indicatorColor: Colors.transparent,
                tabs: widget.sources
                    .map((sources) => SourceTab(sources,
                        widget.sources.indexOf(sources) == selectedIndex))
                    .toList(),
                isScrollable: true,
              ),
              Expanded(child:  NewsList(widget.sources[selectedIndex]))
            ],
          ),
        ));
  }
}
