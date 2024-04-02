import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_instagram_ui/mystory.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _current_index = 0;
  void _buttom_navigatin_bar(int index) {
    setState(() {
      _current_index = index;
    });
  }

  final List<Widget> _children = [
    Center(child: Text('HOME')),
    Center(child: Text('SEARCH')),
    Center(child: Text('ADD')),
    Center(child: Text('REEL')),
    Center(child: Text('PROFILE')),
  ];

  List MYIMAGES = [
    'images/five.jpg',
    'images/six.jpg',
    'images/seven.jpg',
    'images/eight.jpg',
    'images/nine.jpg',
    'images/one.jpg',
    'images/two.jpg',
    'images/three.jpg',
    'images/four.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_bubble_rounded,
                size: 25,
              )),
          SizedBox(
            width: 10,
          ),
        ],
        title: Text(
          'Instagram',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.camera_alt_outlined),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
                story(),
              ],
            ),
          ),
          POSTS(
            name: 'Itx_talhaa_khan',
          ),
          SizedBox(
            height: 4,
          ),
          POST_3(name_3: 'Drone _tech'),
          SizedBox(
            height: 4,
          ),
          POST_4(name_4: 'Qatar Air line'),
          SizedBox(
            height: 4,
          ),
          POST_5(name_5: 'ALON'),
          SizedBox(
            height: 4,
          ),
          POST_7(name_7: 'john belly'),
          SizedBox(
            height: 4,
          ),
          POST_2(name_2: 'talha khan'),
          SizedBox(
            height: 4,
          ),
          POST_6(name_6: 'TALHA KHAN'),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.brown,
          currentIndex: _current_index,
          onTap: _buttom_navigatin_bar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black87,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_rounded,
                color: Colors.black87,
              ),
              label: 'Post',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop,
                  color: Colors.black87,
                ),
                label: 'Reels'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black87,
                ),
                label: 'Person'),
          ]),
    );
  }

  Widget story() {
    return Padding(
      padding: const EdgeInsets.only(right: 9),
      child: Container(
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('images/one.jpg'))),
        ),
        height: 60,
        width: 60,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
      ),
    );
  }
}

class POSTS extends StatelessWidget {
  String name;

  POSTS({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                title: Text(name),
                subtitle: Text('Peshawer'),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/six.jpg'),
                ),
              ),
              Image(
                  width: double.infinity, image: AssetImage('images/six.jpg')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.chat_sharp)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))
                    ],
                  )
                ],
              ),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Every day is a new opportunity')
            ],
          ),
        )
      ],
    );
  }
}

class POST_2 extends StatelessWidget {
  String name_2;

  POST_2({super.key, required this.name_2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                title: Text(name_2),
                subtitle: Text('Peshawer'),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/seven.jpg'),
                ),
              ),
              Image(
                  width: double.infinity,
                  image: AssetImage('images/seven.jpg')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.chat_sharp)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))
                    ],
                  )
                ],
              ),
              Text(
                name_2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Turning dreams into reality')
            ],
          ),
        )
      ],
    );
  }
}

class POST_3 extends StatelessWidget {
  String name_3;

  POST_3({super.key, required this.name_3});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                title: Text(name_3),
                subtitle: Text('Peshawer'),
                leading: CircleAvatar(
                  backgroundColor: Colors.black45,
                ),
              ),
              Image(
                  width: double.infinity,
                  image: AssetImage('images/thirtheen.jpg')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.chat_sharp)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                    ],
                  )
                ],
              ),
              Text(
                name_3,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class POST_4 extends StatelessWidget {
  String name_4;

  POST_4({super.key, required this.name_4});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                title: Text(name_4),
                subtitle: Text('Peshawer'),
                leading: CircleAvatar(
                  backgroundColor: Colors.black45,
                ),
              ),
              Image(
                  width: double.infinity,
                  image: AssetImage('images/twelve.jpg')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.chat_sharp)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))
                    ],
                  )
                ],
              ),
              Text(
                name_4,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class POST_5 extends StatelessWidget {
  String name_5;

  POST_5({super.key, required this.name_5});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                title: Text(name_5),
                subtitle: Text('Peshawer'),
                leading: CircleAvatar(
                  backgroundColor: Colors.black45,
                ),
              ),
              Image(
                  width: double.infinity,
                  image: AssetImage('images/eleven.jpg')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.chat_sharp)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))
                    ],
                  )
                ],
              ),
              Text(
                name_5,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class POST_6 extends StatelessWidget {
  String name_6;

  POST_6({super.key, required this.name_6});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                title: Text(name_6),
                subtitle: Text('Peshawer'),
                leading: CircleAvatar(
                  backgroundColor: Colors.black45,
                ),
              ),
              Image(
                  width: double.infinity, image: AssetImage('images/four.jpg')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.chat_sharp)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))
                    ],
                  )
                ],
              ),
              Text(
                name_6,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class POST_7 extends StatelessWidget {
  String name_7;

  POST_7({super.key, required this.name_7});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                title: Text(name_7),
                subtitle: Text('Peshawer'),
                leading: CircleAvatar(
                  backgroundColor: Colors.black45,
                ),
              ),
              Image(
                  width: double.infinity, image: AssetImage('images/ten.jpg')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_outlined)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.chat_sharp)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.bookmark))
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name_7,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
