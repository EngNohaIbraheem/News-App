import 'package:flutter/material.dart';
import 'category_grid_view.dart';
import 'category/category_news_list.dart';
class HomeView extends StatefulWidget {
  static const String routeName = "HomeView";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Category> category = [
    Category(
      categoryId: "sports",
      categoryImage: "assets/images/sports.png",
      categoryTitle: "sports",
      categoryBackground: const Color.fromARGB(255, 201, 28, 34),
    ), Category(
      categoryId: "health",
      categoryImage: "assets/images/health.png",
      categoryTitle: "health",
      categoryBackground: const Color.fromARGB(255, 201, 28, 34),
    ), Category(
      categoryId: "business",
      categoryImage: "assets/images/bussines.png", categoryTitle: "business",
      categoryBackground: const Color.fromARGB(255, 201, 28, 34),
    ), Category(
      categoryId: "sports",
      categoryImage: "assets/images/sports.png",
      categoryTitle: "Sports",
      categoryBackground: const Color.fromARGB(255, 201, 28, 34),
    ), Category(
      categoryId: "sports",
      categoryImage: "assets/images/sports.png",
      categoryTitle: "Sports",
      categoryBackground: const Color.fromARGB(255, 201, 28, 34),
    ), Category(
      categoryId: "sports",
      categoryImage: "assets/images/sports.png",
      categoryTitle: "Sports",
      categoryBackground: const Color.fromARGB(255, 201, 28, 34),
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: Text(
              selectedCategory == null ? "News AAP" : selectedCategory!
                  .categoryTitle,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w200,
              ),
            ),
            centerTitle: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.green,
                  child: Text(
                    "News APP!",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedCategory == null;
                        Navigator.pop(context);

                        /// close side bar ===drawer
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.menu,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          body: selectedCategory == null ? Container(
            child: Column(
              children: [
                Text("PICK YOUR CATEGORY \n INTERSEST",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),

                Expanded(
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      childAspectRatio: 6 / 7,
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (context, index) =>
                        CategoryGridView(
                          index: index,
                          category: category[index],
                          onClickItem: onClick,
                        ),
                    itemCount: category.length,
                  ),
                ),
              ],

            ),
          ) : CategoryNewsList(selectedCategory!),
        ),
      ],
    );
  }

  Category? selectedCategory = null;

  void onClick(Category catergory) {
    setState(() {
      selectedCategory = catergory;///
    });
  }
}

