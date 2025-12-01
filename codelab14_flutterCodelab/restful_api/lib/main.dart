import 'package:flutter/material.dart';
import 'httphelper.dart';
import 'model/pizza.dart';
import 'model/pizza_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  Future<List<Pizza>> callPizzas() async {
    HttpHelper helper = HttpHelper();
    List<Pizza> pizzas = await helper.getPizzaList();
    return pizzas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PizzaDetailScreen(
                pizza: Pizza.fromJson({
                  'id': 0,
                  'pizzaName': '',
                  'description': '',
                  'price': 0.0,
                  'imageUrl': '',
                  'category': '',
                }),
                isNew: true,
              ),
            ),
          );
        },
      ),
      appBar: AppBar(title: const Text('JSON Fatikah Salsabilla')),
      body: FutureBuilder(
        future: callPizzas(),
        builder: (BuildContext context, AsyncSnapshot<List<Pizza>> snapshot) {
          if (snapshot.hasError) {
            return const Text('Something went wrong');
          }
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }
          return ListView.builder(
            itemCount: (snapshot.data == null) ? 0 : snapshot.data!.length,
            itemBuilder: (BuildContext context, int position) {
              return Dismissible(
                key: Key(position.toString()),
                onDismissed: (item) {
                  HttpHelper helper = HttpHelper();
                  final deletedId = snapshot.data![position].id!;
                  setState(() {
                    snapshot.data!.removeWhere(
                      (element) => element.id == deletedId,
                    );
                  });
                  helper.deletePizza(deletedId);
                },
                child: ListTile(
                  title: Text(snapshot.data![position].pizzaName),
                  subtitle: Text(
                    snapshot.data![position].description +
                        ' - € ' +
                        snapshot.data![position].price.toString(),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PizzaDetailScreen(
                          pizza: snapshot.data![position],
                          isNew: false,
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
