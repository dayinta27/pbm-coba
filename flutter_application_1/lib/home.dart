import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  final String username;

  const Beranda({super.key, required this.username});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  List<Map<String, dynamic>> taxiServices = [
    {
      'name': 'Evan',
      'rating': 4.9,
      'pickupLocation': 'Matahari Royal Plaza',
      'destination': 'Johar Plaza, Jl. Diponegoro No.66, Tembaan, Kepatihan, Kec. Kaliwates, Kabupaten Jember',
      'price': 20000,
    },
    {
      'name': 'Theresa',
      'rating': 4.5,
      'pickupLocation': 'Jember Roxy Square',
      'destination': 'JI. Hayam Wuruk No.50-58, Gerdu, Sempusari, Kec. Kaliwates, Kabupaten Jember',
      'price': 15000,
    },
    {
      'name': 'Mustofa',
      'rating': 4.8,
      'pickupLocation': 'Aston Jember Hotel & Conference Center',
      'destination': 'Jl. Sentot Prawirodirdjo No.88, Telengsah, Jember Kidul, Kec. Kaliwates, Kabupaten Jember',
      'price': 35000,
    },
    {
      'name': 'Kezia',
      'rating': 4.7,
      'pickupLocation': 'Lippo Plaza Jember',
      'destination': 'JI. Gajah Mada No.106, Kb. Kidul, Jember Kidul, Kec. Kaliwates, Kabupaten Jember',
      'price': 15000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffABA6E8),
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 2, 117),
        body: Container(
            child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Hi, Driver!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'This is your story',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: taxiServices.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                          taxiServices[index]['name'],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                            color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              taxiServices[index]['rating'].toString(),
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Pickup: ${taxiServices[index]['pickupLocation']}',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Destination: ${taxiServices[index]['destination']}',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Price: Rp. ${taxiServices[index]['price']}',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        )),
      )),
    );
  }
}
