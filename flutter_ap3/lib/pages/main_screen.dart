import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ap3/bottom_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Профиль'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 40),),
                CircleAvatar(backgroundImage: AssetImage('assets/images/36.jpg'), radius: 50,),
                Padding(padding: EdgeInsets.only(top: 20),),
                Text('Abdazim Abdumalikov', style: TextStyle(fontSize: 25, fontFamily: 'Roboto'),),
                Padding(padding: EdgeInsets.only(top: 20),),
                Row(
                  children: [
                    Icon(Icons.mail_outline, size: 14,),
                    Padding(padding: EdgeInsets.only(left: 2),),
                    Text('dima655600@gmail.com', style: TextStyle(color: Colors.black54, fontFamily: 'Roboto', fontSize: 14),),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, '/todo');
                    },
                        child: Text('Перейти далее')
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
                  height: 410,
                  width: 350,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.blue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.account_box, size: 16, color: Colors.white,),
                              Padding(padding: EdgeInsets.only(left: 4)),
                              Text('Есімі: Абдазим', style: TextStyle(color: Colors.white, fontSize: 16),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_city, size: 16, color: Colors.white,),
                              Padding(padding: EdgeInsets.only(left: 4)),
                              Text('Қаласы: Шымкент', style: TextStyle(color: Colors.white, fontSize: 16),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.book, size: 16, color: Colors.white,),
                              Padding(padding: EdgeInsets.only(left: 4)),
                              Text('Университет: ЮКГУ', style: TextStyle(color: Colors.white, fontSize: 16),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.bookmark, size: 16, color: Colors.white,),
                              Padding(padding: EdgeInsets.only(left: 4)),
                              Text('Курс: 4', style: TextStyle(color: Colors.white, fontSize: 16),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.business_center, size: 16, color: Colors.white,),
                              Padding(padding: EdgeInsets.only(left: 4)),
                              Text('Бағыты: Мобильді қосымша құрастыру', style: TextStyle(color: Colors.white, fontSize: 16),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.call, size: 16, color: Colors.white,),
                              Padding(padding: EdgeInsets.only(left: 4)),
                              Text('WhatsApp: 8(747)-181-44-26', style: TextStyle(color: Colors.white, fontSize: 16)),
                              Padding(padding: EdgeInsets.only(right: 3))
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}