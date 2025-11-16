import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Fatikah',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  late ColorStream colorStream;
  Color bgColor = Colors.white;
  int lastNumber = 0;
  late StreamController<int> numberStreamController;
  late NumberStream numberStream;
  late StreamTransformer<int, int> transformer;
  late StreamSubscription<int> subscription;

  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  @override
  void initState() {
    // colorStream = ColorStream();
    // changeColor();
    transformer = StreamTransformer<int, int>.fromHandlers(
      handleData: (value, sink) {
        sink.add(value * 10);
      },
      handleError: (error, stackTrace, sink) {
        sink.add(-1);
      },
      handleDone: (sink) => sink.close(),
    );

    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;
    subscription = stream.transform(transformer).listen((event) {
      setState(() {
        lastNumber = event;
      });
    });
    super.initState();
    subscription.onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });

    subscription.onDone(() {
      // Called when the stream is closed
      // ignore: avoid_print
      print('OnDone was called');
    });
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }

  void stopStream() {
    subscription.cancel();
    if (!numberStreamController.isClosed) {
      numberStreamController.close();
    }
  }

  @override
  void dispose() {
    subscription.cancel();
    if (!numberStreamController.isClosed) {
      numberStreamController.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Fatikah')),
      body: Container(
        color: bgColor,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(lastNumber.toString(), style: const TextStyle(fontSize: 28)),
              ElevatedButton(
                onPressed: () => addRandomNumber(),
                child: const Text('New Random Number'),
              ),
              ElevatedButton(
                onPressed: () => stopStream(),
                child: const Text('Stop Subscription'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
