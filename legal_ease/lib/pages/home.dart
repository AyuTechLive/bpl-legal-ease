import 'package:flutter/material.dart';
import 'package:legal_ease/component/daily_feed.dart';
import 'package:legal_ease/component/our_services.dart';
import 'package:legal_ease/component/top_categories.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<String> customData = [
    'Card 1',
    'Card 2',
    'Card 3',
    'Card 4',
    'Card 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 65,
            decoration: BoxDecoration(
                color: Color(0xffE1BC8A).withOpacity(0.2),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Container(
                  height: 42,
                  width: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.amber,
                  ),
                ),
                Container(
                  width: 248,
                  height: 32,
                 decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1,
                color: Colors.black.withOpacity(0.20000000298023224),
            ),
            borderRadius: BorderRadius.circular(50),
        ),
        shadows: [
            BoxShadow(
                color: Color(0x68A5A5A5),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
            )
        ],
    ),
    child: Padding(
      padding: EdgeInsets.all(3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/image/search.png'),
          SizedBox(
          width: 38,
          
          ),
          Expanded(
            child:TextField(
              decoration: InputDecoration(
                hintText: 'Search Here',
                border: InputBorder.none
                
              ),
              
            ) 
          )
          
        ],
      ),
    )
)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/image/dailyfeed.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Daily Feed',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 112,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: customData.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.all(8), child: DailyFeed());
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 198,
            width: 413,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(0),
              border: Border.all(
                color: Color(0xff000000).withOpacity(0.2),
              ),
              boxShadow: [
                BoxShadow(
          color: Color(0x68A5A5A5),
          blurRadius: 4,
          offset: Offset(0, 4),
          spreadRadius: 0,
        )
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/image/dailyfeed.png'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Top Categories',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Arial',
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 154,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'See All',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: 'Arial',
                                    fontWeight: FontWeight.w700),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      TopCategories(domain: 'Civil',image: 'assets/image/civil law.png',),
                      SizedBox(width: 38,),
                      TopCategories(domain: 'Finance Law',image: 'assets/image/finance law.png',),
                      SizedBox(width: 38,),
                      TopCategories(domain: 'Human Right',image: 'assets/image/human rights.png',),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 37,
          ),
         Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/image/order.png'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Our Services',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
                  padding: EdgeInsets.fromLTRB(40, 15, 40, 0),
                  child: Row(
                    children: [
                      OurServices(image: 'assets/image/legaldocs.png',text: 'Legal Docs',),
                      SizedBox(width: 38,),
                      OurServices(image: 'assets/image/legaldocs.png',text: 'Family Law',),
                      SizedBox(width: 38,),
                    OurServices(image: 'assets/image/legaldocs.png',text: 'Income Tax',),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 15, 40, 0),
                  child: Row(
                    children: [
                      OurServices(image: 'assets/image/insurance.png',text: 'Insurance',),
                      SizedBox(width: 38,),
                      OurServices(image: 'assets/image/loan.png',text: 'Loan',),
                      SizedBox(width: 38,),
                    OurServices(image: 'assets/image/cyberfraud.png',text: 'Cyber Fraud',),
                    ],
                  ),
                )
        ]),
      ),
    );
  }
}
