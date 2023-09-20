import 'package:flutter/material.dart';
import 'package:legal_ease/component/app_bar.dart';
class Utility extends StatefulWidget {
  const Utility({super.key});

  @override
  State<Utility> createState() => _UtilityState();
}

class _UtilityState extends State<Utility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: Appbar(),
          body: Column(
            children: [
              Container(
                width: 430,
                height: 45,
                color: Color.fromARGB(255, 247, 245, 245),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '                      Type a message...',
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                height: 40,
                child: Row(
                  children: [
                    SizedBox(width: 10.0),
                    Image.asset(
                      'assets/image/star.png',
                      width: 20.12,
                      height: 20.11,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      'UTILITIES',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildButton(
                              'assets/image/Vector.png', 'EMI Calculator'),
                          _buildButton(
                              'assets/image/sip.png', 'SIP Calculator'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildButton('assets/image/rd.png', 'RD Calculator'),
                          _buildButton('assets/image/fd.png', 'FD Calculator'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildButton(
                              'assets/image/pfp.png', 'PFP Calculator'),
                          _buildButton(
                              'assets/image/gst.png', 'GST Calculator'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildButton(
                              'assets/image/compare.png', 'Compare Loan'),
                          _buildButton(
                              'assets/image/tds.png', 'TDS Calculator'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: Container(
                  child: Text("Powered By BPL"),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              BottomNavigationBar(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.add),
                    label: 'Add',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications),
                    label: 'Notifications',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ),
            ],
          ),
        );
  }

  Widget _buildButton(String assetImage, String text) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Image.asset(
            assetImage,
            width: 60,
            height: 60,
          ),
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 255, 255, 255),
            elevation: 7.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            minimumSize: Size(90, 90),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}


