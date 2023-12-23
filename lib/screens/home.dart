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
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 21,
                        left: 20,
                      ),
                      child: Icon(
                        Icons.menu,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 140,
                      ),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(snapshot.data!.results[0].picture.large),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Text(
                            snapshot.data!.results[0].name.first,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            snapshot.data!.results[0].name.last,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 150,
                      ),
                      child: Text(
                        'UI/UX Desinger',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    ListTile(
                      leading: Image.asset('img/yashil.png'),
                      title: Text(
                        'Active',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      trailing: Image.asset('img/vektor.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0x6B109AB8)), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)))),
                        onPressed: () {
                          Navigator.pushNamed(context, '2', arguments: snapshot.data);
                          // setState(() {
                          //   ApiData().getData();
                          // });
                        },
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 0),
                          leading: Icon(
                            Icons.person,
                            size: 60,
                            color: Colors.black,
                          ),
                          title: Text(
                            'My Profile',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          trailing: Icon(
                            Icons.navigate_next_outlined,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.mail,
                        size: 40,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Messages',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      trailing: Image.asset('img/dumaloq.png'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.business_center,
                        color: Colors.black,
                        size: 45,
                      ),
                      title: Text(
                        'My Portofolio',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      trailing: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.share_location_rounded,
                        color: Colors.black,
                        size: 45,
                      ),
                      title: Text(
                        'Location',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      trailing: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.black,
                        size: 45,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      trailing: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Text('Error');
            }
          }),
      floatingActionButton: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          )),
    );
  }
}
