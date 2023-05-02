import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'detail.dart';
import 'globel.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const MyApp(),
      'next': (context) => const Next()
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Staggered RecyclerView",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: StaggeredGrid.count(
              crossAxisCount: 6,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 4.6,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.beaches
                            .map((e) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('next', arguments: e);
                          },
                          child: Column(
                            children: [
                              Image.network(
                                "${e['image']}",
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                "${e['name']}",
                                style: Global.st,
                              )
                            ],
                          ),
                        ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 4.5,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.mountains
                            .map((e) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('next', arguments: e);
                          },
                          child: Column(
                            children: [
                              Image.network(
                                "${e['image']}",
                                height: 200,
                                width: 180,
                                fit: BoxFit.cover,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${e['name']}",
                                  style: Global.st,
                                ),
                              )
                            ],
                          ),
                        ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3.7,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.caves
                            .map((e) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('next', arguments: e);
                          },
                          child: Column(
                            children: [
                              Image.network(
                                "${e['image']}",
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${e['name']}",
                                  style: Global.st,
                                ),
                              )
                            ],
                          ),
                        ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2.8,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.palaces
                            .map((e) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('next', arguments: e);
                          },
                          child: Column(
                            children: [
                              Image.network(
                                "${e['image']}",
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${e['name']}",
                                  style: Global.st,
                                ),
                              )
                            ],
                          ),
                        ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2.8,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.temples
                            .map((e) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('next', arguments: e);
                          },
                          child: Column(
                            children: [
                              Image.network(
                                "${e['image']}",
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${e['name']}",
                                  style: Global.st,
                                ),
                              )
                            ],
                          ),
                        ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 5,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: Global.heritage
                            .map((e) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('next', arguments: e);
                          },
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                "${e['image']}",
                                height: 200,
                                fit: BoxFit.fitHeight,
                              ),
                              Text(
                                "${e['name']}",
                                style: Global.st,
                              )
                            ],
                          ),
                        ))
                            .toList(),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3.1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: Global.rivers
                            .map((e) => GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed('next', arguments: e);
                          },
                          child: Column(
                            children: [
                              Image.network(
                                "${e['image']}",
                                height: 100,
                                fit: BoxFit.fitHeight,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "${e['name']}",
                                  style: Global.st,
                                ),
                              )
                            ],
                          ),
                        ))
                            .toList(),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
