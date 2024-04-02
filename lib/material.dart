import 'package:flutter/material.dart';

Widget STORIES() {
  return Container(
      height: 67,
      width: 67,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.transparent),
      child: Row(
        children: [
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 67,
                width: 67,
                decoration:
                    BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
                child: Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600'))),
                ),
              )
            ],
          ),
        ],
      ));
}
