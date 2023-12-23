import 'package:flutter/material.dart';
import 'package:http_homework/data/api.dart';

class HttpPage extends StatefulWidget {
  const HttpPage({super.key});

  @override
  State<HttpPage> createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: ApiData().getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 30,
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '1');
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(snapshot.data!.results[0].picture.large),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          snapshot.data!.results[0].name.first,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          snapshot.data!.results[0].name.last,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Text(
                            'UI/UX Desinger',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Image.asset('img/pencil.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Container(
                      color: Colors.black,
                      width: 350,
                      height: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                      ),
                      child: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      snapshot.data!.results[0].name.title,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      snapshot.data!.results[0].name.first,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      snapshot.data!.results[0].name.last,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Icon(
                        Icons.call_rounded,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text(
                        'Contact',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                    ),
                    trailing: Text(
                      snapshot.data!.results[0].phone,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.mail,
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Email',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                    ),
                    trailing: Text(
                      snapshot.data!.results[0].email,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 350,
                      height: 2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Other Ways People Can Find Me ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.black.withOpacity(0.3799999952316284),
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                          minimumSize: MaterialStatePropertyAll(Size(350, 58))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset('img/twitter.png'),
                          SizedBox(
                            width: 35,
                          ),
                          Image.asset('img/facebook.png'),
                          SizedBox(
                            width: 50,
                          ),
                          Image.asset('img/instagram.png'),
                          SizedBox(
                            width: 50,
                          ),
                          Image.asset('img/google.png'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 2,
                      width: 350,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info_rounded,
                      size: 35,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Help and Feedback',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 35,
                          color: Colors.black,
                        )),
                  ),
                ],
              );
            } else {
              return Text('Error');
            }
          }),
    );
  }
}
