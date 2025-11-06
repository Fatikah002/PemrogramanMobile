import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
	const NavigationDialogScreen({super.key});

	@override
	State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
	Color color = Colors.blue.shade700;

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: color,
			appBar: AppBar(
				title: const Text('Navigation Dialog Screen Fatikah'),
			),
			body: Center(
				child: ElevatedButton(
					onPressed: () => _showColorDialog(context),
					child: const Text('Change Color'),
				),
			),
		);
	}

	Future<void> _showColorDialog(BuildContext context) async {
		final selected = await showDialog<Color>(
			context: context,
			barrierDismissible: false,
			builder: (_) {
				return AlertDialog(
					title: const Text('Very important question'),
					content: const Text('Please choose a color'),
					actions: <Widget>[
						TextButton(
							onPressed: () => Navigator.pop(context, const Color.fromARGB(255, 2, 0, 37)),
							child: const Text('Navy'),
						),
						TextButton(
							onPressed: () => Navigator.pop(context, const Color.fromARGB(255, 192, 234, 240)),
							child: const Text('Tosca'),
						),
						TextButton(
							onPressed: () => Navigator.pop(context, const Color.fromARGB(255, 255, 184, 184)),
							child: const Text('Pink'),
						),
					],
				);
			},
		);

		if (selected != null) {
			setState(() => color = selected);
		}
	}
}

