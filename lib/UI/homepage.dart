import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/UI/search.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red,
          toolbarHeight: height * 0.06,
          title: Text(
            'TodoApp',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(() => SearchPage());
                },
                icon: Icon(
                  CupertinoIcons.search_circle,
                  size: 40,
                ))
          ],
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                        foregroundColor: Colors.blueAccent),
                    icon: Icon(
                      CupertinoIcons.add_circled_solid,
                      size: 50,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
