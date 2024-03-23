import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:system_management/modules/analysis%20section/presntation/widgets/shadowed_container.dart';

class StatisticContainer extends StatelessWidget {
  const StatisticContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221,
      width: 1263,
      margin: const EdgeInsets.only(top: 40, left: 40),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 195, 195, 195),
            Colors.white,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(100, 195, 195, 195), spreadRadius: 3)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ShadowedConainer(
            height: 171,
            width: 303,
            borderRadius: 20,
            color: const Color.fromRGBO(217, 217, 217, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  title: const Text("Sales"),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("200"),
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(227, 244, 227, 1)),
                          child: const Text("+24 %"))
                    ],
                  ),
                )
              ],
            ),
          ),
          ShadowedConainer(
            height: 171,
            width: 303,
            borderRadius: 20,
            color: const Color.fromRGBO(217, 217, 217, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  title: const Text("Sales"),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("100"),
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(227, 244, 227, 1)),
                          child: const Text("+24 %"))
                    ],
                  ),
                )
              ],
            ),
          ),
          ShadowedConainer(
            height: 171,
            width: 303,
            borderRadius: 20,
            color: const Color.fromRGBO(217, 217, 217, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  title: const Text("Sales"),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("100"),
                      Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(227, 244, 227, 1)),
                          child: const Text("+24 %"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
