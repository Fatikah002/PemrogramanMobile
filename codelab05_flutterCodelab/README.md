# PERTEMUAN 5
## **Nama : Fatikah Salsabilla**

## **No absen : 14**
## **Kelas    : 3H - TI**

## Praktikum 4
1. ![alt text](img/image1.png)
2. ![alt text](img/image2.png)

## Praktikum 5
1. ![alt text](img/image3.png)
2. ![alt text](img/image4.png)
3. ![alt text](img/image5.png)
4. ![alt text](img/image6.png)
5. ![alt text](img/image7.png)
6.  ![alt text](img/image8.png)
![alt text](img/image9.png)

## Tugas Praktikum
1. Launch the app
![alt text](img/image10.png)
2. First Hot Reload
    ```dart
    return Scaffold(
      body: Column(
        children: [
          Text('A random AWESOME idea:'),  // ← Example change.
          Text(appState.current.asLowerCase),
        ],
      ),
    );
![alt text](img/image11.png)
3. Adding a button
    ```dart
     return Scaffold(
      body: Column(
        children: [
          Text('A random AWESOME idea:'),
          Text(appState.current.asLowerCase),

          // ↓ Add this.
          ElevatedButton(
            onPressed: () {
              print('button pressed!');
            },
            child: Text('Next'),
          ),

        ],
      ),
    );
![alt text](img/image12.png)
4. Add a Button
![alt text](img/image13.png)
5. Make the app prettier
    ```dart
 @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(pair.asLowerCase),
      ),
    );
  }
![alt text](img/image14.png)
Theme and Style

![alt text](img/image15.png)
TextTheme
```dart
        @override
    Widget build(BuildContext context) {
        final theme = Theme.of(context);
        final style = theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        );

        return Card(
        color: theme.colorScheme.primary,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(pair.asLowerCase, style: style),
        ),
        );
    }
```
![alt text](img/image16.png)
* Improve Accessbility
 ```dart
    @override
    Widget build(BuildContext context) {
        final theme = Theme.of(context);
        final style = theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        );

        return Card(
        color: theme.colorScheme.primary,
        child: Padding(
            padding: const EdgeInsets.all(20),

            // ↓ Make the following change.
            child: Text(
            pair.asLowerCase,
            style: style,
            semanticsLabel: "${pair.first} ${pair.second}",
            ),
        ),
        );
    }
```
* Center the UI
    ```dart
    mainAxisAlignment: MainAxisAlignment.center,
    ```
![alt text](img/image17.png)
![alt text](img/image18.png)

6. Add Functionality
* Add the business logic
    ```dart
        class MyAppState extends ChangeNotifier {
        var current = WordPair.random();

        void getNext() {
            current = WordPair.random();
            notifyListeners();
        }

        // ↓ Add the code below.
        var favorites = <WordPair>[];

        void toggleFavorite() {
            if (favorites.contains(current)) {
            favorites.remove(current);
            } else {
            favorites.add(current);
            }
            notifyListeners();
        }
        }
* Add the button
![alt text](img/image19.png)
 ```dart
            class MyHomePage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            var appState = context.watch<MyAppState>();
            var pair = appState.current;

            IconData icon;
            if (appState.favorites.contains(pair)) {
            icon = Icons.favorite;
            } else {
            icon = Icons.favorite_border;
            }

            return Scaffold(
            body: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                    Text('A random AWESOME idea:'),
                    BigCard(pair: pair), // ← Change to this.
                    Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        ElevatedButton.icon(
                        onPressed: () {
                            appState.toggleFavorite();
                        },
                        icon: Icon(icon),
                        label: Text('Like'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                        onPressed: () {
                            appState.getNext();
                        },
                        child: Text('Next'),
                        ),
                    ],
                    ),
                ],
                ),
            ),
            );
        }
        }
```
![alt text](img/image20.png)

7.Add navigation rail
```dart
        class MyHomePage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
            body: Row(
                children: [
                SafeArea(
                    child: NavigationRail(
                    extended: false,
                    destinations: [
                        NavigationRailDestination(
                        icon: Icon(Icons.home),
                        label: Text('Home'),
                        ),
                        NavigationRailDestination(
                        icon: Icon(Icons.favorite),
                        label: Text('Favorites'),
                        ),
                    ],
                    selectedIndex: 0,
                    onDestinationSelected: (value) {
                        print('selected: $value');
                    },
                    ),
                ),
                Expanded(
                    child: Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: GeneratorPage(),
                    ),
                ),
                ],
            ),
            );
        }
        }

        class GeneratorPage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            var appState = context.watch<MyAppState>();
            var pair = appState.current;

            IconData icon;
            if (appState.favorites.contains(pair)) {
            icon = Icons.favorite;
            } else {
            icon = Icons.favorite_border;
            }

            return Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                BigCard(pair: pair),
                SizedBox(height: 10),
                Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    ElevatedButton.icon(
                        onPressed: () {
                        appState.toggleFavorite();
                        },
                        icon: Icon(icon),
                        label: Text('Like'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                        onPressed: () {
                        appState.getNext();
                        },
                        child: Text('Next'),
                    ),
                    ],
                ),
                ],
            ),
            );
        }
        }
```
![alt text](img/image21.png)
* Stateless versus stateful widgets
```dart
        class MyHomePage extends StatefulWidget {
        @override
        State<MyHomePage> createState() => _MyHomePageState();
        }

        class _MyHomePageState extends State<MyHomePage> {
        var selectedIndex = 0; // ← Add this property.

        @override
        Widget build(BuildContext context) {
            return Scaffold(
            body: Row(
                children: [
                SafeArea(
                    child: NavigationRail(
                    extended: false,
                    destinations: [
                        NavigationRailDestination(
                        icon: Icon(Icons.home),
                        label: Text('Home'),
                        ),
                        NavigationRailDestination(
                        icon: Icon(Icons.favorite),
                        label: Text('Favorites'),
                        ),
                    ],
                    selectedIndex: selectedIndex, // ← Change to this.
                    onDestinationSelected: (value) {
                        // ↓ Replace print with this.
                        setState(() {
                        selectedIndex = value;
                        });
                    },
                    ),
                ),
                Expanded(
                    child: Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: GeneratorPage(),
                    ),
                ),
                ],
            ),
            );
        }
        }
```
![alt text](img/image22.png)
* Use selectedIndex
    ```dart
        class MyHomePage extends StatefulWidget {
    @override
    State<MyHomePage> createState() => _MyHomePageState();
    }

    class _MyHomePageState extends State<MyHomePage> {
    var selectedIndex = 0; // ← Add this property.

    @override
    Widget build(BuildContext context) {
        Widget page;
        switch (selectedIndex) {
        case 0:
            page = GeneratorPage();
            break;
        case 1:
            page = Placeholder();
            break;
        default:
            throw UnimplementedError('no widget for $selectedIndex');
        }
        return Scaffold(
        body: Row(
            children: [
            SafeArea(
                child: NavigationRail(
                extended: false,
                destinations: [
                    NavigationRailDestination(
                    icon: Icon(Icons.home),
                    label: Text('Home'),
                    ),
                    NavigationRailDestination(
                    icon: Icon(Icons.favorite),
                    label: Text('Favorites'),
                    ),
                ],
                selectedIndex: selectedIndex, // ← Change to this.
                onDestinationSelected: (value) {
                    // ↓ Replace print with this.
                    setState(() {
                    selectedIndex = value;
                    });
                },
                ),
            ),
            Expanded(
                child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
                ),
            ),
            ],
        ),
        );
    }
    }
![alt text](img/image23.png)

* Responsiveness
    ```dart
    class MyHomePage extends StatefulWidget {
    @override
    State<MyHomePage> createState() => _MyHomePageState();
    }

    class _MyHomePageState extends State<MyHomePage> {
    var selectedIndex = 0; // ← Add this property.

    @override
    Widget build(BuildContext context) {
        Widget page;
        switch (selectedIndex) {
        case 0:
            page = GeneratorPage();
            break;
        case 1:
            page = Placeholder();
            break;
        default:
            throw UnimplementedError('no widget for $selectedIndex');
        }
        return LayoutBuilder(
        builder: (context, constraints) {
            return Scaffold(
            body: Row(
                children: [
                SafeArea(
                    child: NavigationRail(
                    extended: constraints.maxWidth >= 600,
                    destinations: [
                        NavigationRailDestination(
                        icon: Icon(Icons.home),
                        label: Text('Home'),
                        ),
                        NavigationRailDestination(
                        icon: Icon(Icons.favorite),
                        label: Text('Favorites'),
                        ),
                    ],
                    selectedIndex: selectedIndex, // ← Change to this.
                    onDestinationSelected: (value) {
                        // ↓ Replace print with this.
                        setState(() {
                        selectedIndex = value;
                        });
                    },
                    ),
                ),
                Expanded(
                    child: Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: page,
                    ),
                ),
                ],
            ),
            );
        }
        );
    }
    }
![alt text](img/image24.png)
![alt text](img/image25.png)

8. Add a new page
    ```dart
        class FavoritesPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        var appState = context.watch<MyAppState>();

        if (appState.favorites.isEmpty) {
        return Center(
            child: Text('No favorites yet.'),
        );
        }

        return ListView(
        children: [
            Padding(
            padding: const EdgeInsets.all(20),
            child: Text('You have '
                '${appState.favorites.length} favorites:'),
            ),
            for (var pair in appState.favorites)
            ListTile(
                leading: Icon(Icons.favorite),
                title: Text(pair.asLowerCase),
            ),
        ],
        );
    }
    }

    
    class _MyHomePageState extends State<MyHomePage> {
    var selectedIndex = 0;

    @override
    Widget build(BuildContext context) {
        Widget page;
        switch (selectedIndex) {
        case 0:
            page = GeneratorPage();
            break;
        case 1:
            page = FavoritesPage(); //diubah
            break;
        default:
            throw UnimplementedError('no widget for $selectedIndex');
        }

![alt text](img/image26.png)