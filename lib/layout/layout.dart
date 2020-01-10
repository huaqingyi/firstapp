import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:firstapp/layout/router.dart';
import 'package:firstapp/layout/store.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final store = LayoutStore();

class Layout extends StatelessWidget {
  final String title;
  final Router router = Router();

  Layout(this.title) {
    Routes.configureRoutes(this.router);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        leading: Icon(Icons.home),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alarm),
            tooltip: 'Add Alarm',
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              store.createHeaderBtn(Icons.message, '发起群聊', 'A'),
              store.createHeaderBtn(Icons.group_add, '添加服务', 'B'),
              store.createHeaderBtn(Icons.cast_connected, '扫一扫码', 'C'),
            ],
            onSelected: (String action) {
              // 点击选项的时候
              switch (action) {
                case 'A':
                  break;
                case 'B':
                  break;
                case 'C':
                  break;
              }
            },
          )
        ],
      ),
      body: Center(
        heightFactor: double.infinity,
        widthFactor: double.infinity,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              Observer(
                builder: (_) => Text(
                  '${store.value}',
                  style: Theme.of(context).textTheme.display1,
                ),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: Navigator(
                    onGenerateRoute: (RouteSettings settings) {
                      Route<dynamic> component = router.generator(settings);
                      store.initComponent(component);
                      return component;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: Observer(
        builder: (_) => BottomNavyBar(
          selectedIndex: store.currentIndex,
          showElevation: true,
          itemCornerRadius: 8,
          onItemSelected: store.onItemSelected,
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
              activeColor: Colors.purpleAccent,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
              activeColor: Colors.pink,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
// import 'package:firstapp/layout/router.dart';
// import 'package:fluro/fluro.dart';
// import 'package:flutter/material.dart';

// class Layout extends StatefulWidget {
//   Layout({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   LayoutStore createState() => LayoutStore();
// }

// class LayoutStore extends State<Layout> {
//   int currentIndex = 0;
//   int _counter = 0;
//   Route<dynamic> container;
//   final Router router = Router();

//   LayoutStore() {
//     Routes.configureRoutes(this.router);
//   }

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   // 返回每个隐藏的菜单项
//   PopupMenuItem<String> _selectView(IconData icon, String text, String id) {
//     return PopupMenuItem<String>(
//       value: id,
//       child: new Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           new Icon(icon, color: Colors.blue),
//           new Text(text),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//         leading: Icon(Icons.home),
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.add_alarm),
//             tooltip: 'Add Alarm',
//             onPressed: () {},
//           ),
//           PopupMenuButton<String>(
//             itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
//               _selectView(Icons.message, '发起群聊', 'A'),
//               _selectView(Icons.group_add, '添加服务', 'B'),
//               _selectView(Icons.cast_connected, '扫一扫码', 'C'),
//             ],
//             onSelected: (String action) {
//               // 点击选项的时候
//               switch (action) {
//                 case 'A':
//                   break;
//                 case 'B':
//                   break;
//                 case 'C':
//                   break;
//               }
//             },
//           )
//         ],
//       ),
//       body: Center(
//         heightFactor: double.infinity,
//         widthFactor: double.infinity,
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           alignment: Alignment.center,
//           child: Column(
//             children: <Widget>[
//               Text('You have pushed the button this many times:'),
//               Text(
//                 '$_counter',
//                 style: Theme.of(context).textTheme.display1,
//               ),
//               Expanded(
//                 child: Container(
//                   height: double.infinity,
//                   child: Navigator(
//                     onGenerateRoute: (RouteSettings settings) {
//                       container = router.generator(settings);
//                       return container;
//                     },
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//       bottomNavigationBar: BottomNavyBar(
//         selectedIndex: currentIndex,
//         showElevation: true,
//         itemCornerRadius: 8,
//         onItemSelected: (index) => setState(() {
//           currentIndex = index;
//           switch (index) {
//             case 0:
//               container.navigator.pushNamed('/home');
//               break;
//             case 1:
//               container.navigator.pushNamed('/user');
//               break;
//             case 2:
//               container.navigator.pushNamed('/message');
//               break;
//             case 3:
//               container.navigator.pushNamed('/setting');
//               break;
//           }
//         }),
//         items: [
//           BottomNavyBarItem(
//             icon: Icon(Icons.apps),
//             title: Text('Home'),
//             activeColor: Colors.red,
//           ),
//           BottomNavyBarItem(
//             icon: Icon(Icons.people),
//             title: Text('Users'),
//             activeColor: Colors.purpleAccent,
//           ),
//           BottomNavyBarItem(
//             icon: Icon(Icons.message),
//             title: Text('Messages'),
//             activeColor: Colors.pink,
//           ),
//           BottomNavyBarItem(
//             icon: Icon(Icons.settings),
//             title: Text('Settings'),
//             activeColor: Colors.blue,
//           ),
//         ],
//       ),
//     );
//   }
// }
