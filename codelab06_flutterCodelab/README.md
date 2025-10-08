# Praktikum 1 - 4
![alt text](img/image9.png)
# Praktikum 5

![alt text](img/image7.png)
![alt text](img/image8.png)

# Tugas Praktikum 1

## **Tata Letak Widget**

![alt text](img/image1.png)

```dart
    import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text(
          'Hello World',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 32, color: Colors.black87),
        ),
      ),
    );
  }
}
```

## **Menyelaraskan widget**

![alt text](img/image2.png)

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Aligning Widgets Example')),
        body: Center(
          // Ganti Row dengan Column untuk mencoba contoh lain
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/pic1.jpeg', width: 100),
              Image.asset('assets/pic2.jpeg', width: 100),
              Image.asset('assets/pic3.jpg', width: 100),
            ],
          ),
        ),
      ),
    );
  }
}
```

![alt text](img/image3.png)

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Aligning Widgets Example')),
        body: Center(
          // Ganti Row dengan Column untuk mencoba contoh lain
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/pic1.jpeg', width: 100),
              Image.asset('assets/pic2.jpeg', width: 100),
              Image.asset('assets/pic3.jpg', width: 100),
            ],
          ),
        ),
      ),
    );
  }
}
```

## **Ukuran Widget**

![alt text](img/image4.png)

```dart
 child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Image.asset('assets/pic1.jpeg')),
              Expanded(child: Image.asset('assets/pic2.jpeg')),
              Expanded(child: Image.asset('assets/pic3.jpg')),
            ],
          ),
```

![alt text](img/image5.png)

```dart
child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Image.asset('assets/pic1.jpeg')),
              Expanded(flex: 2, child: Image.asset('assets/pic2.jpeg')),
              Expanded(child: Image.asset('assets/pic3.jpg')),
            ],
          ),
```

## **Mengemas widget**

![alt text](img/image6.png)

```dart
child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              const Icon(Icons.star, color: Colors.black),
              const Icon(Icons.star, color: Colors.black),
            ],
          ),
```

# Tugas Praktikum 2
![alt text](img/TP2.gif)