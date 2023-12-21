import 'package:flutter/material.dart';
import 'package:http_homework/data/api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: ApiData().getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      snapshot.data!.result[0].name.first,
                      style: TextStyle(fontSize: 50),
                    ),
                  ],
                ),
              );
            } else {
              return Text('Error');
            }
          }),
      floatingActionButton: IconButton(
          onPressed: () {
            setState(() {
              ApiData().getData();
            });
          },
          icon: Icon(
            Icons.next_plan_outlined,
          )),
    );
  }
}
