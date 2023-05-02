import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'globel.dart';

class Next extends StatefulWidget {
  const Next({Key? key}) : super(key: key);

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        appBar: (AppBar(
          title: Text(
            "More Like This",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        )),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.black,
            alignment: Alignment.center,
            child: StaggeredGrid.count(
              crossAxisCount: 6,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3.8,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "${data['image1']}",
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name1']}",
                              style: Global.st,
                            )
                          ]),
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
                          children: [
                            Image.network(
                              "${data['image2']}",
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name2']}",
                              style: Global.st,
                            )
                          ]),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 3.2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "${data['image3']}",
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name3']}",
                              style: Global.st,
                            )
                          ]),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 4.2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "${data['image4']}",
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name4']}",
                              style: Global.st,
                            )
                          ]),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 4.2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "${data['image5']}",
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name5']}",
                              style: Global.st,
                            )
                          ]),
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
                          children: [
                            Image.network(
                              "${data['image6']}",
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "${data['name6']}",
                              style: Global.st,
                            )
                          ]),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
