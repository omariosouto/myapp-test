import 'package:myapp/skynexui/components/box.dart';
import 'package:myapp/skynexui/core/stylesheet.dart';
import 'package:myapp/skynexui/skynexui.dart';

/// How to make breakpoints API?
/// Border radius
///

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: const Box(
        as: As.column,
        styleSheet: StyleSheet(
          padding: 0,
          margin: 0,
          backgroundColor: Colors.yellow,
          alignItems: AlignItems.start,
        ),
        children: [
          Box(
            child: Text('1'),
            styleSheet:
                StyleSheet(backgroundColor: Colors.red, width: 50, height: 50),
          ),
          Box(
            child: Text('2'),
            styleSheet:
                StyleSheet(backgroundColor: Colors.blue, width: 50, height: 50),
          ),
          Box(
            child: Text('3'),
            styleSheet: StyleSheet(
                backgroundColor: Colors.green, width: 50, height: 50),
          ),
        ],
      ),
    );
  }
}
