import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}
class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
/*        leading: IconButton( // 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
          icon: Icon(Icons.menu),
          onPressed: () { // 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곳
            print('menu button is clicked');
          },*/
        actions: [ // 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
          IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            print('Shopping cart is clicked');
          },
        ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/img.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/img_1.png'),
                ),
                // CircleAvatar(
                //   backgroundColor: Colors.white,
                //   backgroundImage: AssetImage('assets/img_1.png'),
                // ),
              ],
              // UserAccountDrawerHeader에서는 accountEmail과 accountName이 필수적인 argument이다.
              accountEmail: Text('bbanto@bbanto.com'),
              accountName: Text('BBANTO'),
              onDetailsPressed:(){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: (){
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
