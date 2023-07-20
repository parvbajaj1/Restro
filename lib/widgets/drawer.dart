import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipPath(
        clipper: myclip(),
        child: Drawer(
            width: MediaQuery.sizeOf(context).width * 0.8,
            child: Column(
              children: [
                ListTile(
                  leading: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        margin: const EdgeInsets.only(top: 40),
                        child: Icon(
                          Icons.close,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 40),
                  child: Container(
                    child: const Column(
                      children: [
                        ListTile(
                          title: Text(
                            "My Account",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            height: 10,
                            thickness: 1,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Cart",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            height: 10,
                            thickness: 1,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Payments",
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Divider(
                            height: 10,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class myclip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.6, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
