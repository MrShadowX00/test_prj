import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const routeName = '/screen_2';

  Widget singleItemWidget(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PhysicalModel(
        color: Colors.black,
        shadowColor: Colors.black,
        elevation: 6,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 130,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              '$title',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      alignment: Alignment.topRight,
                      child: const Text(
                        'X',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child:const Text(
                    'Section 1 (2)',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                height: 150,
                 child:ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder:(BuildContext context, int index){
                        return singleItemWidget('Horizontal item $index');
                      }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child:const Text(
                    'Section 2 (4)',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                child:ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder:(BuildContext context, int index){
                      return singleItemWidget('Horizontal item $index');
                    }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
