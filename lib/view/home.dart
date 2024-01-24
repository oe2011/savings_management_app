import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 147, 218, 133)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '現在の貯金残高：○○円'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _currentIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: null,
            child: Text(
              '給料日まで残り○○日となりました\n今月△△の貯金をするのであれば今日は',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                height: 5, //文字の大きさの0.5倍(7)を行間
                ),
              )
          ),
          SizedBox(
            width: double.infinity,
            height: null,
            child: Text(
              '○○円',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60,
                height: 5, //文字の大きさの0.5倍(7)を行間
                fontWeight: FontWeight.bold,
                ),
              ),
          ),
          SizedBox(
            width: double.infinity,
            height: null,
            child: Text(
              'しか使ってはいけません。',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                height: 5, //文字の大きさの0.5倍(7)を行間
                ),
              ),
          ),
        ]
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'aaa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '設定',
          ),
        ],
      // currentIndex: _selectedIndex,
       onTap: (index) {
        print(index);
        if (_currentIndex != index) {
          setState(() {
            _currentIndex = index;
          });
        }
      },
      ),    
    );
  }
}


