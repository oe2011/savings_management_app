import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Setting extends StatefulWidget {
  Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  int _selectedIndex = 1;
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 147, 218, 133),
      ),
      body: const Column(
        children:[
          Padding( // 推奨
          padding: EdgeInsets.all(20),
          ),
          SizedBox(
            width: double.infinity,
            height: null,
            child: Text(
          "現在の貯金残高は",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            height: 3, //文字の大きさの0.5倍(7)を行間
          ),
        )
          ),
          SizedBox(
            child: Text(
              '○○円',
              style: TextStyle(
                fontSize: 40,
                height: 3, //文字の大きさの0.5倍(7)を行間
              ),
            )
          ),
          SizedBox(
            child: Text(
              'です。私は今月',
              style: TextStyle(
                fontSize: 40,
                height: 3, //文字の大きさの0.5倍(7)を行間
              ),
            )
          ),
          SizedBox(
            child: Text(
              '○○円',
              style: TextStyle(
                fontSize: 40,
                height: 3, //文字の大きさの0.5倍(7)を行間
              ),
            )
          ),
          SizedBox(
            child: Text(
              '貯金します',
              style: TextStyle(
                fontSize: 40,
                height: 3, //文字の大きさの0.5倍(7)を行間
              ),
            )
          ),
          
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'aaa',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '設定',
          ),
 
        ],
       type: BottomNavigationBarType.shifting,
       currentIndex:_selectedIndex,
       onTap: (int index) {
        setState(() {
            _selectedIndex = index;
          });
        switch(index){
          case 0:
            context.push("/home");
            break;
          case 1:
            context.push("/setting");
            break;
          case 2:
            context.push("/histry");
            break;                           
        }
        
      },
      ),  
    );
  }

}