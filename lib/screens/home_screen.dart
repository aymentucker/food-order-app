import 'package:flutter/material.dart';
import 'package:fooddelvery/components/my_drawer.dart';
import 'package:fooddelvery/components/my_sliver_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                const MySliverAppBar(
                  title: Text('Home'),
                  child: Text('child'),
                )
              ],
          body: Container(
            color: Colors.blue,
          )),
    );
  }
}
