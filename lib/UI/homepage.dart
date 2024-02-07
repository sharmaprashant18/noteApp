import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/UI/search.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          // backgroundColor: Colors.black,
          elevation: 0,
          toolbarHeight: height * 0.08,
          title: Center(
            child: Text(
              'Index',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // color: Colors.white
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(SearchPage());
              },
              icon: Icon(Icons.person),
              color: Colors.white,
              iconSize: 30,
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                  height: height * .09,
                  child: DrawerHeader(
                      child: Text(
                    'Settings',
                  ))),
              ListTile(
                title: Text(
                  'Change App Color                              >',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Change app typography                     >',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                  title: Text(
                    'Change app language                         >',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text(
                    'Import from Google calendar             >',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ),

        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
