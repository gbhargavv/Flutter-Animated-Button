## Example

```dart
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Animated Button'),
        ),
        body: Center(
            child: Container(
                height: 40,
                width: double.maxFinite,
                margin: EdgeInsets.all(10),
                child: AnimatedButton(
                    text: "Animation Button",
                    backgroundColor: Colors.blue,
                    onTap: () {
                      print('===== click ');
                    },
                    key: null,
                    iconData: Icons.add,
                    radius: 30.0))));
  }
}
```