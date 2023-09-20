import 'package:flutter/material.dart';
import 'package:legal_ease/component/app_bar.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.08,
            color: Color.fromARGB(255, 251, 242, 243),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 29,
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle the book now button press
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(218, 255, 227, 226),
                      padding: const EdgeInsets.all(5),
                      elevation: 7,
                    ),
                    child: Text('BEST RESULTS',
                        style: TextStyle(
                          color: Color.fromARGB(
                              246, 0, 0, 0), // Change the text color to white

                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                Center(
                  // child: Padding(
                  //   padding: const EdgeInsets.all(0),
                  child: Container(
                    width: 146,
                    height: 26,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search), // Add the search icon
                        hintText: 'Search.',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                // ),
                Text(
                  'Sort by:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 8.0), // Add vertical margin between items
                    padding: EdgeInsets.all(16.0),
                    color: Color.fromARGB(255, 255, 250, 250),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 128, 127, 127)),
                          ),
                          width: 403,
                          height: 80,
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      const Color.fromARGB(255, 192, 227, 255),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lawyer Name',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Experience: 5 years',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 20,
                                        color: Colors.yellow,
                                      ),
                                      Text('  4.5')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7,
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(children: [
                                Container(
                                  height: 22,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 246, 255, 0),
                                      foregroundColor:
                                          Color.fromARGB(255, 0, 0, 0),
                                    ),
                                    child: Text('Availability'),
                                  ),
                                ),
                              ])
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 72, 72, 72)),
                          ),
                          width: 403,
                          height: 55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Address:',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '123 Main Street, City',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 70,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 54, 166, 37),
                                    foregroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  child: Text(
                                    'VISIT',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          width: 403,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 22,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 54, 166, 37),
                                    foregroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  icon: Icon(Icons.currency_rupee), //
                                  label: Text("500"),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 70,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 29, 56, 139),
                                    foregroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  child: Text('BOOK'),
                                ),
                              ),
                              Container(
                                height: 22,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 255, 228, 77),
                                    foregroundColor:
                                        Color.fromARGB(255, 9, 9, 9),
                                  ),
                                  child: Text('Availability'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
