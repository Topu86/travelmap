import 'package:flutter/material.dart';
import 'package:travelmap/all country.dart';
class hhhh extends StatefulWidget {
  const hhhh({Key? key}) : super(key: key);

  @override
  _hhhhState createState() => _hhhhState();


}

class _hhhhState extends State<hhhh> {
  List Continent = [
    ['Bangladesh Tranel','assets/a.jpg'],
    ['world Travel','assets/a.jpg'],
    ['Travel Blog','assets/a.jpg'],
    ['Favarit plae','assets/a.jpg'],
    ['Hotel','assets/a.jpg'],
    ['Save Data','assets/a.jpg'],


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/b.jpg',
                fit: BoxFit.fill,
              ),

            ),
            toolbarHeight: 100,
            expandedHeight: 300,
            collapsedHeight: 100,
            pinned: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context,index){
                return Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    itemCount: Continent.length,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>ddd(
                            )));
                        },
                        child: Container(
                          height: 5,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  spreadRadius: 10,
                                  blurRadius: 5,
                                  // offset: Offset(0, 7), // changes position of shadow
                                ),],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Card(
                              elevation: 8,
                              child:
                              Text("${Continent[index][0]}")

                          ),
                        ),
                      );
                    },

                  ),
                );
              },
              childCount: Continent.length,
              )

          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Travel Guide',style: TextStyle(fontSize: 40),),
            decoration: BoxDecoration(color: Colors.green),
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>hhhh(
                  )));
              },
            ),
            ListTile(
              leading: Icon(Icons.travel_explore_outlined), title: Text("Bangladesh Travel"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.travel_explore), title: Text("world travel"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.video_collection),
              title: Text("Travel Blog"),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>hhhh(
                  )));
              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt_sharp), title: Text("Plan"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.house_sharp), title: Text("Hotel&resot"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ), ListTile(
              leading: Icon(Icons.save_rounded), title: Text("Save as"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.share), title: Text("Share"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings), title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),


            ListTile(
              leading: Icon(Icons.contacts), title: Text("Contact Us"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

    );
  }
}
