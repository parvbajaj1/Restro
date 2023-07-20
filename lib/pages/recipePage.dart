import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restro/controllers/cart_controller.dart';
import 'package:restro/widgets/appbar.dart';

import '../utils/contants.dart';

import 'homePage.dart';

class recipePage extends StatelessWidget {
  final controller = Get.put(CartController());
  recipePage({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(
        context: context,
        onTap: () => Navigator.pop(
          context,
        ),
        icon: back,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // GetX.addtolist(index);

          controller.addtolist(index);
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: bg1.withOpacity(0.3),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 170,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                          controller.orderitems[index]['imageUrl']),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(controller.orderitems[index]['name']),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("author name here"),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              SizedBox(width: 100, child: Text("Protein")),
                              SizedBox(
                                width: 15,
                              ),
                              SizedBox(width: 20, child: Text("15"))
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                  width: 100, child: Text("Carbohydrates")),
                              SizedBox(
                                width: 15,
                              ),
                              SizedBox(width: 20, child: Text("25"))
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Row(
                            children: [
                              SizedBox(width: 100, child: Text("Fiber")),
                              SizedBox(
                                width: 15,
                              ),
                              SizedBox(width: 20, child: Text("05")),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                  Text(
                    "Step 1",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ],
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                  Text(
                    "Step 2",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip "),
                ],
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                  Text(
                    "Step 3",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.grey,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi"),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
