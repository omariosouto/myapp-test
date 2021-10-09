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
      body: Box(
        styleSheet: StyleSheet(
          backgroundColor: Colors.grey.shade200,
          alignItems: AlignItems.start,
        ),
        children: const [
          Box(
            as: As.column,
            children: [
              Box(
                child: Text('Topoaa'),
                styleSheet: StyleSheet(
                  // backgroundColor: Colors.red,
                  // backgroundColor: {
                  //   xs: Colors.black,
                  //   md: Colors.blue,
                  // },
                  backgroundColor: Colors.red,
                  color: Colors.white,
                ),
              ),
              Box(child: Text('Meio')),
              Box(child: Text('Footer')),
            ],
          )
        ],
      ),
    );
  }
}
