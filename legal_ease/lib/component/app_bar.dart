import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Appbar({super.key});
@override
 Size get preferredSize => Size.fromHeight(80.0); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       children:[ Container(
        
        color: Color(0xff171717),
        child: Padding(
          padding:EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon: Image.asset('assets/image/LIST.png',height: 27,width: 25,)),
              SizedBox(
                width: 50,
              ),
              
              IconButton(onPressed: (){}, icon: Image.asset('assets/image/nameBar.png',width: 192,height: 38,)),
              SizedBox(
                width: 30,
              ),
              
              IconButton(onPressed: (){}, icon: Image.asset('assets/image/notification.png',width: 35,height: 35,)),
     
     
              
            ],
          ),
        ),
       ),
       
       ],
       
     ),
    
    
     
    );
  }
}