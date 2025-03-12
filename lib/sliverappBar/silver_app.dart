import 'package:flutter/material.dart';

class MySliverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Center(child: Text("Home Page")),
                background: Container(
                  padding: EdgeInsets.only(top: 40),
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceAround, // Spread out buttons evenly
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Action for Home button
                            },
                            child: Text("Home"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Action for Shop button
                            },
                            child: Text("Shop"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Action for Other button
                            },
                            child: Text("Other"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Use SliverToBoxAdapter to add non-sliver widgets
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Regular Container")),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Regular Container")),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Regular Container")),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Regular Container")),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Regular Container")),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Regular Container")),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Regular Container")),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Regular Container")),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("Regular Container")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
