import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20), primary: Colors.black);

  TextStyle _textStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);

  void _openMenu() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
          appBar: AppBar(title: Text('Menu')),
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(padding: EdgeInsets.only(top: 5)),
            Row(children: [
              Padding(padding: EdgeInsets.only(left: 5)),
              ElevatedButton(
                child: Text('To Colours!'),
                style: _buttonStyle,
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/colours');
                },
              ),
              Padding(padding: EdgeInsets.only(left: 20)),
              Text(
                'Page with random generated colours!',
                style: _textStyle,
              )
            ])
          ]));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: _openMenu, icon: Icon(Icons.menu)),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('This is mane page.', style: _textStyle),
            Text('The menu can be opened from top right corner',
                style: _textStyle)
          ],
        ),
      ),
    );
  }
}
