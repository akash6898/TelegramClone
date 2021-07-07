import 'package:flutter/material.dart';

class Tel extends StatefulWidget {
  @override
  _TelState createState() => _TelState();
}

class _TelState extends State<Tel> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBox) {
              return <Widget>[buildSliverAppBar()];
            },
            body: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Info",
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Here will be our info",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Bio",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "@akash_6898",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "username",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Notifiaction"),
                            Switch(
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                              value: isSwitched,
                              activeColor: Colors.white,
                              activeTrackColor: Colors.blue,
                              inactiveTrackColor: Colors.grey,
                              inactiveThumbColor: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 300,
      titleSpacing: 20,
      floating: false,
      pinned: true,
      snap: false,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back,
          color: Colors.red,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera,
              color: Colors.red,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              color: Colors.red,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.red,
            )),
      ],
      flexibleSpace: Stack(
        overflow: Overflow.visible,
        children: [
          FlexibleSpaceBar(
            title: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Akash Soni",
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
                Text(
                  "last sen at 12:19",
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ],
            ),
            titlePadding: EdgeInsets.only(left: 10, bottom: 10),
            background: Image.asset(
              'images/person.png',
              fit: BoxFit.cover,
            ),
          ),
          buildPositioned()
        ],
      ),
    );
  }

  Positioned buildPositioned() {
    return Positioned(
      bottom: -20,
      right: 20,
      child: Container(
        width: 40,
        height: 40,
        child: Icon(Icons.message),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
      ),
    );
  }
}
