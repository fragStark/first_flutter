import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key key, this.initValue: 0}):super(key: key);

  final int initValue;

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count;

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: FlatButton(
          color: Colors.orange,
          child: Text("$_count"),
          onPressed: () => setState(() => ++_count),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _count = widget.initValue;
    print("initState");
  }

  @override
  void didUpdateWidget(Counter oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
